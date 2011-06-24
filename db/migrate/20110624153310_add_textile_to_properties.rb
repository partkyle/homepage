class AddTextileToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :textile, :boolean
  end
end
