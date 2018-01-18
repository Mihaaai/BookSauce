class CreateJoinTableBooksProfiles < ActiveRecord::Migration[5.1]
  def change
  	create_join_table :books, :profiles do |t|
  		t.index [:profile_id, :book_id]
  	end
  end
end
