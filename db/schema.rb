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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160523122853) do

  create_table "answers", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "question_id"
    t.text     "body"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "bas", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "question_id"
    t.text     "body"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "username"
  end

  create_table "bests", force: :cascade do |t|
    t.text     "body"
    t.string   "username"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "question_id"
    t.string   "answer_id"
  end

  create_table "boards", force: :cascade do |t|
    t.string   "title"
    t.string   "outset"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.string   "Builder"
  end

  create_table "brokers", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.string   "image"
    t.string   "image_cache"
    t.string   "remove_image"
    t.string   "license"
    t.string   "max_lev"
    t.string   "spread"
    t.string   "min_amo"
    t.string   "tr_fee"
    t.string   "capital"
    t.string   "lang"
    t.string   "cur"
    t.string   "order"
    t.string   "min_lot"
    t.string   "max_lot"
    t.string   "cur_pair"
    t.string   "p_met"
    t.string   "b_pro"
    t.string   "state"
    t.string   "jp_sup"
    t.string   "p_ref"
    t.string   "p_fee"
    t.string   "w_fee"
    t.string   "m_fee"
    t.string   "demo"
    t.string   "multi"
    t.string   "sp_met"
    t.string   "tr_sys"
    t.string   "platform"
    t.string   "tr_pos"
    t.string   "gmt"
    t.string   "rollover"
    t.string   "ma_cal"
    t.string   "lo_cut"
    t.string   "both"
    t.string   "ea_lim"
    t.string   "ma_occ"
    t.string   "ca_trs"
    t.string   "st_met"
    t.string   "mo_sup"
    t.string   "support"
    t.string   "design"
    t.string   "feeling"
    t.string   "payment"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "board_id"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "evas", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "broker_id"
    t.text     "body"
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fruits", force: :cascade do |t|
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "name"
    t.string   "image"
    t.string   "image_cache"
  end

  create_table "notices", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.string   "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "queries", force: :cascade do |t|
    t.string   "title"
    t.string   "body"
    t.string   "cont"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.string   "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "replies", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "ba_id"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "username"
    t.string   "provider"
    t.string   "uid"
    t.string   "profile"
    t.string   "image"
    t.string   "image_cache"
    t.string   "remove_image"
    t.string   "avatar"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["username"], name: "index_users_on_username", unique: true

end
