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
    t.integer  "user_id"
    t.string   "name"
    t.string   "colour"
    t.datetime "created"
    t.datetime "modified"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "contents", :force => true do |t|
    t.integer  "bowl_id"
    t.integer  "dryfruit_id"
    t.integer  "quantity"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "dry_fruits", :force => true do |t|
    t.string   "name"
    t.string   "scientificname"
    t.integer  "energy"
    t.decimal  "fat",            :precision => 5, :scale => 2
    t.decimal  "protein",        :precision => 5, :scale => 2
    t.string   "imagesmall"
    t.string   "imagelarge1"
    t.string   "imagelarge2"
    t.string   "imagelarge3"
    t.decimal  "vitamin_a",      :precision => 5, :scale => 2
    t.decimal  "vitamin_b1",     :precision => 5, :scale => 2
    t.decimal  "vitamin_b2",     :precision => 5, :scale => 2
    t.decimal  "vitamin_b3",     :precision => 5, :scale => 2
    t.decimal  "vitamin_b5",     :precision => 5, :scale => 2
    t.decimal  "vitamin_b6",     :precision => 5, :scale => 2
    t.decimal  "vitamin_b9",     :precision => 5, :scale => 2
    t.decimal  "vitamin_b12",    :precision => 5, :scale => 2
    t.decimal  "vitamin_c",      :precision => 5, :scale => 2
    t.decimal  "vitamin_d",      :precision => 5, :scale => 2
    t.decimal  "vitamin_e",      :precision => 5, :scale => 2
    t.decimal  "vitamin_k",      :precision => 5, :scale => 2
    t.decimal  "carbohydrates",  :precision => 5, :scale => 2
    t.decimal  "calcium",        :precision => 5, :scale => 2
    t.decimal  "iron",           :precision => 5, :scale => 2
    t.decimal  "magnesium",      :precision => 5, :scale => 2
    t.decimal  "manganese",      :precision => 5, :scale => 2
    t.decimal  "phosphorus",     :precision => 5, :scale => 2
    t.decimal  "potassium",      :precision => 5, :scale => 2
    t.decimal  "sodium",         :precision => 5, :scale => 2
    t.decimal  "zinc",           :precision => 5, :scale => 2
    t.text     "about"
    t.text     "benefits"
    t.text     "sideeffects"
    t.text     "extra"
    t.decimal  "weightpp",       :precision => 5, :scale => 2
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "firstname"
    t.string   "lastname"
    t.integer  "role",                                       :default => 1
    t.string   "passwordhash"
    t.string   "salt"
    t.datetime "dob"
    t.integer  "height"
    t.decimal  "weight",       :precision => 5, :scale => 2
    t.string   "picture"
    t.datetime "created_at",                                                :null => false
    t.datetime "updated_at",                                                :null => false
  end

end
