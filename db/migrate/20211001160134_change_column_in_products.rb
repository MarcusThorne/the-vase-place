class ChangeColumnInProducts < ActiveRecord::Migration[6.1]
  def change
    remove_column :products, :price
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
