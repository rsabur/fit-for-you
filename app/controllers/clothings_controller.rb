class ClothingsController < ApplicationController
    def index
        if params[:sort] == 'gender'
            @clothings = Clothing.order(:gender) 
            # set instance variable to a list ordered by 'name'
          else
            @clothings = Clothing.all
        end
    end

    def show
        @clothing = Clothing.find(params[:id])
        #byebug
    end

end
