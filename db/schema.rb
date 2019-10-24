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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_10_24_045417) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dogs", force: :cascade do |t|
    t.string "name"
    t.bigint "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_dogs_on_person_id"
  end

  create_table "interests", force: :cascade do |t|
    t.string "name"
    t.bigint "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_interests_on_person_id"
  end

  create_table "interests_people", force: :cascade do |t|
    t.bigint "person_id"
    t.bigint "interest_id"
    t.integer "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["interest_id"], name: "index_interests_people_on_interest_id"
    t.index ["person_id"], name: "index_interests_people_on_person_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "hair_color"
  end

  create_table "teeths", force: :cascade do |t|
    t.string "teethable_type"
    t.bigint "teethable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "number"
    t.index ["teethable_type", "teethable_id"], name: "index_teeths_on_teethable_type_and_teethable_id"
  end

  add_foreign_key "dogs", "people"
  add_foreign_key "interests", "people"
  add_foreign_key "interests_people", "interests"
  add_foreign_key "interests_people", "people"
end
