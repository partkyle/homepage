class Category < ActiveRecord::Base
  has_and_belongs_to_many :resumes
  has_many :sub_categories, :class_name => "Category", :foreign_key => "category_id"
end
