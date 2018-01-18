class AddCheckUserIdToProfil < ActiveRecord::Migration[5.1]
  def up
  	change_column :profiles, :user_id, :integer, null: false
  end

  def down
  	
  end
end
