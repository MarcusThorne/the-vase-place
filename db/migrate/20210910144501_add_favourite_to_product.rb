class AddFavouriteToProduct < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :favourite, :boolean
  end
end
