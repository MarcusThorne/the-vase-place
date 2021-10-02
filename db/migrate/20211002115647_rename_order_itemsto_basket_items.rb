class RenameOrderItemstoBasketItems < ActiveRecord::Migration[6.1]
  def change
    rename_table :order_items, :basket_items
  end
end
