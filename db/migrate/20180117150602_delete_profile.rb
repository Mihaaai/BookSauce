class DeleteProfile < ActiveRecord::Migration[5.1]
  def change
  	drop_join_table :books, :profiles
  	drop_table :profiles
  end
end
