class SessionsController < ApplicationController
    skip_before_action :logged_in?, only: [:new_login, :login]

    def new_login

    end

    def login
        # find a user based on email
        user = User.find_by(email: params[:session][:email])
        # byebug
        #validate that user based on their password
        if user && user.authenticate(params[:session][:password])
        #set a cookie 
            cookies[:user_id] = user.id
            redirect_to user_path(user)
        else
            flash[:error] = "Password or Email is incorrect"
            redirect_to new_login_path
        end
    end

    def logout
        cookies.delete(:user_id)

        redirect_to new_login_path
    end
end