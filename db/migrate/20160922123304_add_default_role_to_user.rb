class AddDefaultRoleToUser < ActiveRecord::Migration[5.0]
	
  	def up
	change_column :users, :role, :integer, default: 2, null: false
	end

	def down
	change_column :users, :role, :integer, default: nil
	end
end