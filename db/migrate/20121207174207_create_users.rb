class CreateUsers < ActiveRecord::Migration
  def change
    create_table(:users, :primary_key => 'id') do |t|
      t.integer :id
      t.string :email
      t.string :firstname
      t.string :lastname
      t.string :passwordhash
      t.datetime :dob
      t.integer :height
      t.decimal :weight
      t.string :picture

      t.timestamps
    end
  end
end
