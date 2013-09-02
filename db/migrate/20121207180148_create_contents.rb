class CreateContents < ActiveRecord::Migration
  def change
    create_table(:contents, :primary_key => 'id') do |t|
      t.integer :id
      t.integer :bowl_id
      t.integer :dryfruit_id
      t.integer :quantity

      t.timestamps
    end
  end
end
