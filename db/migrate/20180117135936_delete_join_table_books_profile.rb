class DeleteJoinTableBooksProfile < ActiveRecord::Migration[5.1]
  def change
  	drop_join_table :books, :profile
  end
end
