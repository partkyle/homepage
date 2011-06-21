class Category < ActiveRecord::Base
  has_and_belongs_to_many :resumes
  belongs_to :parent_category, :class_name => "Category", :foreign_key => "parent_id"
  has_many :sub_categories, :class_name => "Category", :foreign_key => "parent_id"
  
  def parent?
    parent_category == nil    
  end
end
