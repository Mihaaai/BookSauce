class CreateJoinTableBookProfile < ActiveRecord::Migration[5.1]
  def change
  	create_join_table :books, :profile do |t|
  		t.index [:profile_id]
  	end
  end
end
