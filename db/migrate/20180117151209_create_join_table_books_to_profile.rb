class CreateJoinTableBooksToProfile < ActiveRecord::Migration[5.1]
  def change
  	create_join_table :books, :profiles do |t|
  		t.index [:book_id,:profile_id], unique: true
  	end
  end
end
