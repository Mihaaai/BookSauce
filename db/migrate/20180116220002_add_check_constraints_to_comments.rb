class AddCheckConstraintsToComments < ActiveRecord::Migration[5.1]
  def change
  	change_column :comments, :book_id, :integer, null: false
  	change_column :comments, :user_id, :integer, null: false 
  end
end
