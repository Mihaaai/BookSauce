class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.text :message, null: false
      t.integer :rating
      t.belongs_to :book, foreign_key: true
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
