class RemoveFavouriteFromProduct < ActiveRecord::Migration[6.1]
  def change
    remove_column :products, :favourite
  end
end
