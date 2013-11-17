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

ActiveRecord::Schema.define(version: 20131117003625) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "forest_plots", force: true do |t|
    t.integer "forest_id"
    t.integer "plot_id"
  end

  create_table "forests", force: true do |t|
    t.string   "name"
    t.string   "city"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "forests_users", force: true do |t|
    t.integer "user_id"
    t.integer "forest_id"
  end

  create_table "plot_resources", force: true do |t|
    t.boolean "fulfilled"
    t.integer "plot_id"
    t.integer "resource_id"
  end

  create_table "plots", force: true do |t|
    t.string   "city"
    t.integer  "size"
    t.integer  "forest_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "resources", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_resources", force: true do |t|
    t.integer "user_id"
    t.integer "resource_id"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "remember_token"
    t.string   "image"
    t.string   "uid"
    t.string   "provider"
    t.string   "oauth_token"
    t.date     "oath_expires_at"
    t.text     "bio"
    t.boolean  "private"
    t.string   "city"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["remember_token"], name: "index_users_on_remember_token", unique: true, using: :btree

end
