class AddNameNotNullToAuthors < ActiveRecord::Migration[5.1]
  def change
  	change_column :authors, :name, :string, :null => false
  end
end
