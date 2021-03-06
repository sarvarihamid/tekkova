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

ActiveRecord::Schema.define(version: 2018_06_03_170430) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "car_features", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "car_features_cars", id: false, force: :cascade do |t|
    t.bigint "car_id", null: false
    t.bigint "car_feature_id", null: false
    t.index ["car_id", "car_feature_id"], name: "index_car_features_cars_on_car_id_and_car_feature_id"
  end

  create_table "cars", force: :cascade do |t|
    t.string "year"
    t.string "make"
    t.string "model"
    t.string "series"
    t.string "odometer"
    t.string "trans_mission"
    t.string "body_type"
    t.string "color"
    t.string "fuel_type"
    t.string "power"
    t.integer "number_of_seats"
    t.string "drive_type"
    t.text "description"
    t.string "liecense_plate_number"
    t.string "state"
    t.string "insurance_provider"
    t.string "agreed_insurance_value"
    t.string "availibility_days"
    t.string "pickup_suburb"
    t.string "pickup_postcode"
    t.string "pickup_state"
    t.string "rental"
    t.string "pickup_time"
    t.string "dropoff_time"
    t.string "advance_notice"
    t.integer "daily_drive_limit"
    t.boolean "allow_personal_commercial_use"
    t.string "driving_liecense_country"
    t.string "driving_liecense_state"
    t.integer "driving_liecense_number"
    t.string "driving_liecense_firstname"
    t.string "driving_liecense_middlename"
    t.string "driving_liecense_lastname"
    t.integer "personal_house_number"
    t.string "personal_street_name"
    t.string "personal_suburb"
    t.string "personal_state"
    t.string "personal_postcode"
    t.date "personal_dob"
    t.string "personal_mobile"
    t.integer "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_cars_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "firstname"
    t.string "lastname"
    t.boolean "send_updates"
    t.boolean "admin", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
