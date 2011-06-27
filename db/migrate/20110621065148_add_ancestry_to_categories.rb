class AddAncestryToCategories < ActiveRecord::Migration
  def change
    remove_column :categories, :category_id
    add_column :categories, :ancestry, :string
    add_index :categories, :ancestry
  end
end
