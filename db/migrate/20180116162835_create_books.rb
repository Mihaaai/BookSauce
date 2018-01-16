class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.text :abstract
      t.text :summary
      t.string :photo
      t.text :shopLink, limit: 2083
      t.string :author

      t.timestamps
    end
  end
end
