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

ActiveRecord::Schema[8.0].define(version: 2025_10_06_225343) do
  create_table "facilities", force: :cascade do |t|
    t.string "name"
    t.datetime "founded"
    t.string "address"
    t.string "category"
    t.string "status"
    t.string "operating_hours"
    t.text "rules"
    t.boolean "is_reservable"
    t.integer "capacity"
    t.string "phone_contact"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "issues", force: :cascade do |t|
    t.string "issue_type"
    t.string "location"
    t.string "description"
    t.datetime "created_on"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status"
    t.integer "user_id", null: false
    t.index ["user_id"], name: "index_issues_on_user_id"
  end

  create_table "reservable_spaces", force: :cascade do |t|
    t.integer "facility_id", null: false
    t.string "name"
    t.integer "capacity"
    t.decimal "hourly_rate"
    t.text "description"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["facility_id"], name: "index_reservable_spaces_on_facility_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "issues", "users"
  add_foreign_key "reservable_spaces", "facilities"
end
