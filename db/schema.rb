# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2024_04_25_204920) do

  create_table "base_types", force: :cascade do |t|
    t.string "nome", limit: 255
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", force: :cascade do |t|
    t.string "nome", limit: 255
    t.text "descr"
    t.string "datai", limit: 255
    t.string "dataf", limit: 255
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books_families", id: false, force: :cascade do |t|
    t.integer "book_id"
    t.integer "family_id"
  end

  create_table "books_names", id: false, force: :cascade do |t|
    t.integer "book_id"
    t.integer "name_id"
  end

  create_table "books_orbs", id: false, force: :cascade do |t|
    t.integer "book_id"
    t.integer "orb_id"
  end

  create_table "books_races", id: false, force: :cascade do |t|
    t.integer "book_id"
    t.integer "race_id"
  end

  create_table "books_ships", id: false, force: :cascade do |t|
    t.integer "book_id"
    t.integer "ship_id"
  end

  create_table "families", force: :cascade do |t|
    t.string "nome", limit: 255
    t.text "descr"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "families_races", id: false, force: :cascade do |t|
    t.integer "family_id"
    t.integer "race_id"
  end

  create_table "names", force: :cascade do |t|
    t.string "nome", limit: 255
    t.text "descr"
    t.integer "race_id"
    t.integer "family_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "aparencia", limit: 255
    t.integer "sexo", default: 1
  end

  create_table "orb_types", force: :cascade do |t|
    t.string "nome", limit: 255
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orbs", force: :cascade do |t|
    t.string "nome", limit: 255
    t.text "descr"
    t.integer "orb_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "orbit_id", limit: 255
  end

  create_table "races", force: :cascade do |t|
    t.string "nome", limit: 255
    t.text "descr"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ship_sizes", force: :cascade do |t|
    t.string "nome", limit: 255
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ships", force: :cascade do |t|
    t.string "nome", limit: 255
    t.text "descr"
    t.integer "base_type_id"
    t.integer "ship_size_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
