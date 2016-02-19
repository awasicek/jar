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

ActiveRecord::Schema.define(version: 20160219195109) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "jars", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "mem_id"
  end

  add_index "jars", ["mem_id"], name: "index_jars_on_mem_id", using: :btree
  add_index "jars", ["user_id"], name: "index_jars_on_user_id", using: :btree

  create_table "mems", force: :cascade do |t|
    t.string   "date"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "jar_id"
    t.integer  "user_id"
  end

  add_index "mems", ["jar_id"], name: "index_mems_on_jar_id", using: :btree
  add_index "mems", ["user_id"], name: "index_mems_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "jars", "mems"
  add_foreign_key "jars", "users"
  add_foreign_key "mems", "jars"
  add_foreign_key "mems", "users"
end
