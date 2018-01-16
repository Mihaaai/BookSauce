class CreateJoinTableBookUser < ActiveRecord::Migration[5.1]
  def change
  	create_join_table :books, :users do |t|
  		t.index [:user_id]
  	end
  end
end
