class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
	remove_index :profiles, :user_id
  	add_index :profiles, :user_id, unique: true
  end
end
