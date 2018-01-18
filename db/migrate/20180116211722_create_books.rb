class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.string :abstract
      t.text :summary, null: false, default: "Summary coming soon !!"
      t.string :photo
      t.text :shop, limit: 2083
      t.belongs_to :category, foreign_key: true
      t.belongs_to :author, foreign_key: true

      t.timestamps
    end
  end
end
