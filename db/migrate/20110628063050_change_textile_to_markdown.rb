class ChangeTextileToMarkdown < ActiveRecord::Migration
  def up
    rename_column :properties, :textile, :markdown
  end

  def down
    rename_column :properties, :markdown, :textile
  end
end
