class RenameOrdersToBaskets < ActiveRecord::Migration[6.1]
  def change
    rename_table :orders, :baskets
  end
end
