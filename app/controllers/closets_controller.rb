class ClosetsController < ApplicationController
    def index
        @my_clothes = @current_user.clothings
        #byebug
    end

    def show
        # byebug
        # @closet = Closet.find(params[:id])
    end

    def create
        # byebug
       @add_clothes = Closet.create(closet_params)
       redirect_to closets_path(@current_user)
    end

    private

    def closet_params
        params.permit(:user_id, :clothing_id)
    end

end
