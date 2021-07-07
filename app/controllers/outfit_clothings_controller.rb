class OutfitClothingsController < ApplicationController
    def new
        @outfit_clothing = OutfitClothing.new

        @outfit = Outfit.find(params[:outfit_id])
        @clothing = Clothing.all

        @shirts = shirts
        @pants = pants
        @accessories = accessories
        @shoes = shoes
    end

    def create
        # @outfit_clothing = OutfitClothing.find(params[:id])

        # @outfit = Outfit.find(params[:outfit_id])

        params[:outfit_clothing].each do |clothing_hash| 
           OutfitClothing.create(clothing_id: clothing_hash[:clothing_id], outfit_id: params[:outfit_id])
        end 
        
    
        redirect_to outfit_path(params[:outfit_id])
    end

    private

    # def outfit_clothing_params
    #     params.require(:outfit_clothing).permit(:outfit_id, :clothing_id)
    # end

    def shirts
        Clothing.select do |clothing| 
            clothing.category == "Shirt"
        end
    end

    def pants
        Clothing.select do |clothing| 
            clothing.category == "Pant"
        end
    end

    def accessories
        Clothing.select do |clothing| 
            clothing.category == "Accessory"
        end
    end

    def shoes
        Clothing.select do |clothing| 
            clothing.category == "Shoe"
        end
    end
end
