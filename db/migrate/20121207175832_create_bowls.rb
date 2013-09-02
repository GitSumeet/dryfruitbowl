class CreateBowls < ActiveRecord::Migration
  def change
    create_table(:bowls, :primary_key => 'id') do |t|
      t.integer :id
      t.integer :user_id
      t.string :name
      t.string :colour
      t.datetime :created
      t.datetime :modified
      t.string :description
      
      t.timestamps
    end
  end
end
