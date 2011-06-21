class AddAncestryToCategories < ActiveRecord::Migration
  def change
    remove_column :categories, :parent_id
    add_column :categories, :ancestry, :string
    add_index :categories, :ancestry
  end
end
