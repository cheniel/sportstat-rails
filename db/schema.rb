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

ActiveRecord::Schema.define(version: 20150308210223) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "basketball_games", force: true do |t|
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer  "assists"
    t.integer  "two_pointers"
    t.integer  "three_pointers"
    t.string   "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.decimal  "lat"
    t.decimal  "long"
    t.integer  "duration"
    t.decimal  "distance"
    t.integer  "possessions"
    t.integer  "shots_attempted"
  end

  add_index "basketball_games", ["user_id"], name: "index_basketball_games_on_user_id", using: :btree

  create_table "user_relationships", force: true do |t|
    t.integer  "follower_id",  null: false
    t.integer  "following_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar"
  end

  add_index "users", ["username"], name: "index_users_on_username", using: :btree

end
