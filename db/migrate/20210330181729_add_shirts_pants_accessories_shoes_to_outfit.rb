class AddShirtsPantsAccessoriesShoesToOutfit < ActiveRecord::Migration[6.1]
  def change
    add_column :outfits, :shirts_id, :integer
    add_column :outfits, :pants_id, :integer
    add_column :outfits, :accessories_id, :integer
    add_column :outfits, :shoes_id, :integer
  end
end
