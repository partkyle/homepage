class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.string :name
      t.text :comment
      t.date :created_at

      t.timestamps
    end
  end
end
