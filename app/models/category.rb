class Category < ActiveRecord::Base
  has_ancestry
  has_and_belongs_to_many :resumes
end
