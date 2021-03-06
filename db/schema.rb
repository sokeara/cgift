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

ActiveRecord::Schema.define(version: 20140227094639) do

  create_table "items", force: true do |t|
    t.string   "name_item"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "img_item_file_name"
    t.string   "img_item_content_type"
    t.integer  "img_item_file_size"
    t.datetime "img_item_updated_at"
    t.boolean  "recent",                default: false
    t.integer  "id_item"
  end

  create_table "profiles", force: true do |t|
    t.date     "dob",         limit: 255
    t.string   "pob"
    t.string   "skills"
    t.string   "favorite"
    t.string   "dream"
    t.string   "current_job"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "gender"
    t.string   "username"
    t.string   "password"
    t.string   "email"
    t.integer  "phone_num"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

end
