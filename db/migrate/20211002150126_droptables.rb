class Droptables < ActiveRecord::Migration[6.1]
  def change
    drop_table :categories
    drop_table :categories_products
    remove_column :products, :category_id
  end
end
