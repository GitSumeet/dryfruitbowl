# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121208144108) do

  create_table "bowls", :force => true do |t|
    t.integer  "userid"
    t.string   "name"
    t.string   "colour"
    t.datetime "created"
    t.datetime "modified"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "contents", :force => true do |t|
    t.integer  "bowlid"
    t.integer  "dryfruitid"
    t.integer  "quantity"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "dry_fruits", :force => true do |t|
    t.string   "name"
    t.string   "scientificname"
    t.integer  "energy"
    t.decimal  "fat",            :precision => 10, :scale => 0
    t.decimal  "protein",        :precision => 10, :scale => 0
    t.string   "imagesmall"
    t.string   "imagelarge1"
    t.string   "imagelarge2"
    t.string   "imagelarge3"
    t.decimal  "vitamin_a",      :precision => 10, :scale => 0
    t.decimal  "vitamin_b1",     :precision => 10, :scale => 0
    t.decimal  "vitamin_b2",     :precision => 10, :scale => 0
    t.decimal  "vitamin_b3",     :precision => 10, :scale => 0
    t.decimal  "vitamin_b5",     :precision => 10, :scale => 0
    t.decimal  "vitamin_b6",     :precision => 10, :scale => 0
    t.decimal  "vitamin_b9",     :precision => 10, :scale => 0
    t.decimal  "vitamin_b12",    :precision => 10, :scale => 0
    t.decimal  "vitamin_c",      :precision => 10, :scale => 0
    t.decimal  "vitamin_d",      :precision => 10, :scale => 0
    t.decimal  "vitamin_e",      :precision => 10, :scale => 0
    t.decimal  "vitamin_k",      :precision => 10, :scale => 0
    t.decimal  "carbohydrates",  :precision => 10, :scale => 0
    t.decimal  "calcium",        :precision => 10, :scale => 0
    t.decimal  "iron",           :precision => 10, :scale => 0
    t.decimal  "magnesium",      :precision => 10, :scale => 0
    t.decimal  "manganese",      :precision => 10, :scale => 0
    t.decimal  "phosphorus",     :precision => 10, :scale => 0
    t.decimal  "potassium",      :precision => 10, :scale => 0
    t.decimal  "sodium",         :precision => 10, :scale => 0
    t.decimal  "zinc",           :precision => 10, :scale => 0
    t.string   "about"
    t.text     "benefits"
    t.text     "sideeffects"
    t.string   "extra"
    t.datetime "created_at",                                    :null => false
    t.datetime "updated_at",                                    :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "passwordhash"
    t.datetime "dob"
    t.integer  "height"
    t.decimal  "weight",       :precision => 10, :scale => 0
    t.string   "picture"
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
  end

end
