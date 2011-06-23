class AddContentToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :content, :text
  end
end
