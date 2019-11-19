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

ActiveRecord::Schema.define(version: 2019_11_19_201322) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bills", force: :cascade do |t|
    t.date "start_date", null: false
    t.date "end_date", null: false
    t.integer "kilowatt_hours", null: false
    t.integer "amount_cents", null: false
    t.bigint "fpl_account_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["fpl_account_id"], name: "index_bills_on_fpl_account_id"
  end
  
  create_table "challenge_tips", force: :cascade do |t|
    t.bigint "challenge_id", null: false
    t.bigint "tip_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["challenge_id"], name: "index_challenge_tips_on_challenge_id"
    t.index ["tip_id"], name: "index_challenge_tips_on_tip_id"
  end

  create_table "challenges", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.integer "points"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "fpl_accounts", force: :cascade do |t|
    t.string "encrypted_username", null: false
    t.string "encrypted_password", null: false
    t.bigint "user_id", null: false
    t.string "zipcode"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_fpl_accounts_on_user_id"
  end

  create_table "tips", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "type_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bills", "fpl_accounts"
  add_foreign_key "challenge_tips", "challenges"
  add_foreign_key "challenge_tips", "tips"
  add_foreign_key "fpl_accounts", "users"
end
