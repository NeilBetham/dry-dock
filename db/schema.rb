# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_21_031117) do

  create_table "deployments", force: :cascade do |t|
    t.string "name"
    t.string "update_method"
    t.datetime "update_window_start"
    t.datetime "update_window_stop"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "devices", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.integer "deployment_id", null: false
    t.datetime "last_checkin"
    t.boolean "enable_updates"
    t.text "public_key"
    t.boolean "adopted"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["deployment_id"], name: "index_devices_on_deployment_id"
  end

  create_table "images", force: :cascade do |t|
    t.string "version_tag"
    t.text "hash"
    t.integer "deployment_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["deployment_id"], name: "index_images_on_deployment_id"
  end

  create_table "log_chunks", force: :cascade do |t|
    t.text "message"
    t.integer "device_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["device_id"], name: "index_log_chunks_on_device_id"
  end

  add_foreign_key "devices", "deployments"
  add_foreign_key "images", "deployments"
  add_foreign_key "log_chunks", "devices"
end
