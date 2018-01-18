class AddDefaultDescriptionToAuthors < ActiveRecord::Migration[5.1]
  def change
  	change_column :authors, :description, :text, :default => ""
  end
end
