class RemoveForceFromProducts < ActiveRecord::Migration[6.1]
  def change
    remove_column :products, "—force"
  end
end
