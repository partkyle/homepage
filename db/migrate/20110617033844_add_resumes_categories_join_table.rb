class AddResumesCategoriesJoinTable < ActiveRecord::Migration
  def up
    create_table :categories_resumes, :id => false do |t|
      t.column :category_id, :integer
      t.column :resume_id, :integer
    end
  end

  def down
    drop_table :categories_resumes
  end
end
