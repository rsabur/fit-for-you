class OutfitsController < ApplicationController
    def index
        @outfits = Outfit.all
    end

    def show
        @outfit = Outfit.find(params[:id])
        #byebug
    end

    def new
        @outfit = Outfit.new
    end 

    def create
        @outfit = Outfit.create(outfit_params)
        
        redirect_to outfit_path(@outfit.id)
    end

    def edit
        @outfit = Outfit.find(params[:id])
    end

    def update
        @outfit = Outfit.find(params[:id])
        #byebug
        @outfit.update(outfit_params)

        redirect_to outfit_path(@outfit)
    end

    def destroy 
        @outfit = Outfit.find(params[:id])

        @outfit.delete

        redirect_to outfits_path
    end


    private

    def outfit_params
        params.require(:outfit).permit(:name, :user_id)
    end
end
