# encoding: UTF-8
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

ActiveRecord::Schema.define(:version => 20140221185942) do

  create_table "base_types", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "books", :force => true do |t|
    t.string   "nome"
    t.text     "descr"
    t.string   "datai"
    t.string   "dataf"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "books_families", :force => true do |t|
    t.integer "book_id"
    t.integer "family_id"
  end

  create_table "books_names", :force => true do |t|
    t.integer "book_id"
    t.integer "name_id"
  end

  create_table "books_orbs", :force => true do |t|
    t.integer "book_id"
    t.integer "orb_id"
  end

  create_table "books_races", :force => true do |t|
    t.integer "book_id"
    t.integer "race_id"
  end

  create_table "books_ships", :force => true do |t|
    t.integer "book_id"
    t.integer "ship_id"
  end

  create_table "families", :force => true do |t|
    t.string   "nome"
    t.text     "descr"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "families_races", :force => true do |t|
    t.integer "family_id"
    t.integer "race_id"
  end

  create_table "names", :force => true do |t|
    t.string   "nome"
    t.text     "descr"
    t.integer  "race_id"
    t.integer  "family_id"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.string   "aparencia"
    t.integer  "sexo",       :default => 1
  end

  create_table "orb_types", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "orbs", :force => true do |t|
    t.string   "nome"
    t.text     "descr"
    t.integer  "orb_type_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "orbit_id"
  end

  create_table "races", :force => true do |t|
    t.string   "nome"
    t.text     "descr"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ship_sizes", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ships", :force => true do |t|
    t.string   "nome"
    t.text     "descr"
    t.integer  "base_type_id"
    t.integer  "ship_size_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end
