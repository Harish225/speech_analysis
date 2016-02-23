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

ActiveRecord::Schema.define(version: 20151202070745) do

  create_table "admins", force: :cascade do |t|
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
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "english_country_residences", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "native_languages", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phonemes", force: :cascade do |t|
    t.string   "base"
    t.string   "actual"
    t.string   "diacritic"
    t.integer  "sequence"
    t.integer  "speaker_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "phonemes", ["speaker_id"], name: "index_phonemes_on_speaker_id"

  create_table "search_views", id: false, force: :cascade do |t|
<<<<<<< HEAD
    t.string "base1"
    t.string "actual1"
    t.string "diacritic1"
    t.string "speakername"
    t.string "nativelanguage"
=======
    t.string "BASE"
    t.string "ACTUAL"
    t.string "DIACRITIC"
    t.string "SPEAKER_NAME"
    t.string "NATIVE_LANGUAGE"
>>>>>>> upstream/master
  end

  create_table "speakers", force: :cascade do |t|
    t.string   "name"
    t.integer  "city_id"
    t.integer  "state_id"
    t.integer  "country_id"
    t.integer  "native_language_id"
    t.integer  "other_languages"
    t.integer  "age"
    t.integer  "gender"
    t.integer  "english_onset"
    t.integer  "learning_method"
    t.integer  "english_country_residence_id"
    t.integer  "length_english_residence"
    t.integer  "user_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "speakers", ["city_id"], name: "index_speakers_on_city_id"
  add_index "speakers", ["country_id"], name: "index_speakers_on_country_id"
  add_index "speakers", ["english_country_residence_id"], name: "index_speakers_on_english_country_residence_id"
  add_index "speakers", ["native_language_id"], name: "index_speakers_on_native_language_id"
  add_index "speakers", ["state_id"], name: "index_speakers_on_state_id"
  add_index "speakers", ["user_id"], name: "index_speakers_on_user_id"

  create_table "states", force: :cascade do |t|
    t.string   "name"
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
