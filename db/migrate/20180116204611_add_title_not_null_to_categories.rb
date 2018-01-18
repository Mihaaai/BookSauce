class AddTitleNotNullToCategories < ActiveRecord::Migration[5.1]
  def change
  	change_column :categories, :title, :string, :null => false
  end
end
