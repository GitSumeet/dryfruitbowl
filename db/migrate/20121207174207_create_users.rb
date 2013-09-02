class CreateUsers < ActiveRecord::Migration
  def change
    create_table(:users, :primary_key => 'id') do |t|
      t.integer :id
      t.string :email
      t.string :firstname
      t.string :lastname
      t.integer :role, :default => 1
      t.string :passwordhash
      t.string :salt
      t.datetime :dob
      t.integer :height
      t.decimal :weight, :precision => 5, :scale => 2
      t.string :picture

      t.timestamps
    end
  end
end
