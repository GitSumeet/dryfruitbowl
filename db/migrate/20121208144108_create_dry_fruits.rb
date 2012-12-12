class CreateDryFruits < ActiveRecord::Migration
  def change
    create_table(:dry_fruits, :primary_key => 'id') do |t|
      t.integer :id
      t.string :name
      t.string :scientificname
      t.integer :energy
      t.decimal :fat
      t.decimal :protein
      t.string :imagesmall
      t.string :imagelarge1
      t.string :imagelarge2
      t.string :imagelarge3
      t.decimal :vitamin_a
      t.decimal :vitamin_b1
      t.decimal :vitamin_b2
      t.decimal :vitamin_b3
      t.decimal :vitamin_b5
      t.decimal :vitamin_b6
      t.decimal :vitamin_b9
      t.decimal :vitamin_b12
      t.decimal :vitamin_c
      t.decimal :vitamin_d
      t.decimal :vitamin_e
      t.decimal :vitamin_k
      t.decimal :carbohydrates
      t.decimal :calcium
      t.decimal :iron
      t.decimal :magnesium
      t.decimal :manganese
      t.decimal :phosphorus
      t.decimal :potassium
      t.decimal :sodium
      t.decimal :zinc
      t.string :about
      t.text :benefits
      t.text :sideeffects
      t.string :extra

      t.timestamps
    end
  end
end
