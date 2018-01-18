class AddUNiqueTitleAuthorsToBooks < ActiveRecord::Migration[5.1]
  def change
	add_index :books, [:title, :author_id], unique: true  	
  end
end
