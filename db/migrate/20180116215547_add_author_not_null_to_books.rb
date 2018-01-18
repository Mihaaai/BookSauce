class AddAuthorNotNullToBooks < ActiveRecord::Migration[5.1]
  def change
  	change_column :books, :author_id, :integer,  null: false
  	change_column :books, :category_id, :integer, null: false
  end
end
