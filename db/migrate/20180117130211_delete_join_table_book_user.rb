class DeleteJoinTableBookUser < ActiveRecord::Migration[5.1]
  def change
  	drop_join_table :books ,:users
  end
end
