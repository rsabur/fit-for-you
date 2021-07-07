class UsersController < ApplicationController
    skip_before_action :logged_in?, only: [:index, :new, :create]

    
    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
        # byebug
        if @current_user == @user 
            render :show
          else  
            flash.now[:messages] = "You can only see your own profile"
            redirect_to users_path
        end
    end

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        # byebug
        if @user.valid?
            cookies[:user_id] = @user.id
            redirect_to @user
          else
            flash[:messages] = @user.errors.full_messages
            redirect_to new_user_path
        end 
    end

    def destroy
        @user = User.find(params[:id])

        @user.delete

        redirect_to users_path
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])

        @user.update(user_params)

        redirect_to user_path(@user)
    end

    private 

    def user_params
        params.require(:user).permit(:name, :avatar, :gender, :email, :password)
    end

end
