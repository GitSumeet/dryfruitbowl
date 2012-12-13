class AddColumnsToUser < ActiveRecord::Migration
  
  def up
    add_column :users, :salt, :string
    
    # 0 = ADMIN, 1 = Normal User
    add_column :users, :role, :integer, :default => 1
  end
  
  def down
    remove_column :users, :salt
    remove_column :users, :role
  end
  
end
