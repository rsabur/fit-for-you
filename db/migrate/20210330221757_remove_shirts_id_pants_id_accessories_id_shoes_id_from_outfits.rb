class RemoveShirtsIdPantsIdAccessoriesIdShoesIdFromOutfits < ActiveRecord::Migration[6.1]
  def change
    remove_column :outfits, :shirts_id, :string
    remove_column :outfits, :pants_id, :string
    remove_column :outfits, :accessories_id, :string
    remove_column :outfits, :shoes_id, :string
  end
end
