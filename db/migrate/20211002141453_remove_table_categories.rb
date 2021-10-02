class RemoveTableCategories < ActiveRecord::Migration[6.1]
  def change
    remove_column :products, :category_id
    drop_table :categories
  end
end
