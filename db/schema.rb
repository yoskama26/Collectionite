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

ActiveRecord::Schema[7.1].define(version: 2024_04_07_185752) do
  create_table "cards", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "attack_value"
    t.integer "defense_value"
    t.text "effect"
    t.integer "collector_id", null: false
    t.index ["collector_id"], name: "index_cards_on_collector_id"
  end

  create_table "cards_collections", id: false, force: :cascade do |t|
    t.integer "card_id", null: false
    t.integer "collection_id", null: false
  end

  create_table "collections", force: :cascade do |t|
    t.string "name"
    t.integer "collector_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["collector_id"], name: "index_collections_on_collector_id"
  end

  create_table "collectors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "cards", "collectors"
  add_foreign_key "collections", "collectors"
end
