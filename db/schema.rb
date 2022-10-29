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

ActiveRecord::Schema[7.0].define(version: 2022_10_29_105940) do
  create_table "abouts", charset: "utf8mb4", force: :cascade do |t|
    t.string "about_img"
    t.text "about_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", charset: "utf8mb4", force: :cascade do |t|
    t.string "title"
    t.string "banner_img"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "communities", charset: "utf8mb4", force: :cascade do |t|
    t.text "community_description"
    t.string "community_img"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", charset: "utf8mb4", force: :cascade do |t|
    t.integer "category_id"
    t.string "title"
    t.date "event_date"
    t.time "event_time"
    t.string "ticket_format"
    t.date "early_booking_end_date"
    t.time "early_booking_end_time"
    t.integer "early_booking_price_regular"
    t.integer "early_booking_price_vip"
    t.string "location"
    t.integer "regular_price"
    t.integer "vip_price"
    t.integer "vip_no_of_tickets"
    t.integer "regular_no_of_tickets"
    t.string "banner_img"
    t.string "description"
    t.string "image_url1"
    t.string "image_url2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "home_banners", charset: "utf8mb4", force: :cascade do |t|
    t.string "title"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tickets", charset: "utf8mb4", force: :cascade do |t|
    t.string "ticket_no"
    t.integer "user_id"
    t.integer "event_id"
    t.integer "number_of_vip_tickets"
    t.integer "number_of_regular_tickets"
    t.integer "amount"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transactions", charset: "utf8mb4", force: :cascade do |t|
    t.string "MerchantRequestID"
    t.string "CheckoutRequestID"
    t.string "ResponseDescription"
    t.integer "ResponseCode"
    t.string "CustomerMessage"
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_profiles", charset: "utf8mb4", force: :cascade do |t|
    t.integer "user_id"
    t.string "full_name"
    t.string "avatar_img"
    t.string "phone_number"
    t.text "bio"
    t.string "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", charset: "utf8mb4", force: :cascade do |t|
    t.string "email"
    t.string "username"
    t.string "password_digest"
    t.boolean "is_organiser"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
