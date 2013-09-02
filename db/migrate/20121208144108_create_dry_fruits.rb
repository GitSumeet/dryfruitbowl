class CreateDryFruits < ActiveRecord::Migration
  def change
    create_table(:dry_fruits, :primary_key => 'id') do |t|
      t.integer :id
      t.string :name
      t.string :scientificname
      t.integer :energy
      t.decimal :fat, :precision => 5, :scale => 2
      t.decimal :protein, :precision => 5, :scale => 2
      t.string :imagesmall
      t.string :imagelarge1
      t.string :imagelarge2
      t.string :imagelarge3
      t.decimal :vitamin_a, :precision => 5, :scale => 2
      t.decimal :vitamin_b1, :precision => 5, :scale => 2
      t.decimal :vitamin_b2, :precision => 5, :scale => 2
      t.decimal :vitamin_b3, :precision => 5, :scale => 2
      t.decimal :vitamin_b5, :precision => 5, :scale => 2
      t.decimal :vitamin_b6, :precision => 5, :scale => 2
      t.decimal :vitamin_b9, :precision => 5, :scale => 2
      t.decimal :vitamin_b12, :precision => 5, :scale => 2
      t.decimal :vitamin_c, :precision => 5, :scale => 2
      t.decimal :vitamin_d, :precision => 5, :scale => 2
      t.decimal :vitamin_e, :precision => 5, :scale => 2
      t.decimal :vitamin_k, :precision => 5, :scale => 2
      t.decimal :carbohydrates, :precision => 5, :scale => 2
      t.decimal :calcium, :precision => 5, :scale => 2
      t.decimal :iron, :precision => 5, :scale => 2
      t.decimal :magnesium, :precision => 5, :scale => 2
      t.decimal :manganese, :precision => 5, :scale => 2
      t.decimal :phosphorus, :precision => 5, :scale => 2
      t.decimal :potassium, :precision => 5, :scale => 2
      t.decimal :sodium, :precision => 5, :scale => 2
      t.decimal :zinc, :precision => 5, :scale => 2
      t.text :about
      t.text :benefits
      t.text :sideeffects
      t.text :extra
      t.decimal :weightpp, :precision => 5, :scale => 2
      
      t.timestamps
    end
  end
end
