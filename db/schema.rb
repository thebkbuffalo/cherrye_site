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

ActiveRecord::Schema.define(version: 20151020181502) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blogs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "title"
    t.text     "content"
  end

  create_table "images", force: :cascade do |t|
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.string   "caption"
  end

  create_table "performances", force: :cascade do |t|
    t.string   "title"
    t.string   "caption"
    t.string   "link_to_buy"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "perf_photo_file_name"
    t.string   "perf_photo_content_type"
    t.integer  "perf_photo_file_size"
    t.datetime "perf_photo_updated_at"
  end

  create_table "playwrights", force: :cascade do |t|
    t.string   "happening_now_title"
    t.text     "happening_now_description"
    t.string   "coming_up_title"
    t.text     "coming_up_description"
    t.text     "press"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.string   "up_coming_prod_still_file_name"
    t.string   "up_coming_prod_still_content_type"
    t.integer  "up_coming_prod_still_file_size"
    t.datetime "up_coming_prod_still_updated_at"
    t.string   "happening_now_prod_still_file_name"
    t.string   "happening_now_prod_still_content_type"
    t.integer  "happening_now_prod_still_file_size"
    t.datetime "happening_now_prod_still_updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "videos", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "title"
    t.string   "caption"
    t.string   "url"
  end

end
