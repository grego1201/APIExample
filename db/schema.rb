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

ActiveRecord::Schema.define(version: 2021_07_15_211246) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "communicateds", force: :cascade do |t|
    t.string "subject"
    t.string "body"
    t.bigint "last_communicated_id"
    t.bigint "creator_id"
    t.bigint "receptor_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["creator_id"], name: "index_communicateds_on_creator_id"
    t.index ["last_communicated_id"], name: "index_communicateds_on_last_communicated_id"
    t.index ["receptor_id"], name: "index_communicateds_on_receptor_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.date "birthday"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "communicateds", "communicateds", column: "last_communicated_id"
  add_foreign_key "communicateds", "people", column: "creator_id"
  add_foreign_key "communicateds", "people", column: "receptor_id"
end
