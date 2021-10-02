class RenameColumnInBasketItems < ActiveRecord::Migration[6.1]
  def change
    rename_column :basket_items, :order_id, :basket_id
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
