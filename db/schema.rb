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

ActiveRecord::Schema.define(version: 20161108001329) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "challenges", force: :cascade do |t|
    t.string   "name"
    t.integer  "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "employee", id: false, force: :cascade do |t|
    t.string "name",     limit: 20
    t.string "dept",     limit: 20
    t.string "jobtitle", limit: 20
  end

  create_table "employee_with_number", id: false, force: :cascade do |t|
    t.string  "name", limit: 20
    t.integer "cell"
  end

  create_table "people", force: :cascade do |t|
    t.string   "pname"
    t.integer  "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "submissions", force: :cascade do |t|
    t.string   "user"
    t.integer  "score"
    t.integer  "user_id"
    t.integer  "challenge_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "url"
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.integer  "points"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "things", force: :cascade do |t|
    t.string   "tname"
    t.text     "description"
    t.integer  "person_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "tokemons", force: :cascade do |t|
    t.string   "name"
    t.integer  "weight"
    t.integer  "height"
    t.integer  "fly"
    t.integer  "fight"
    t.integer  "fire"
    t.integer  "water"
    t.integer  "electrify"
    t.integer  "ice"
    t.integer  "total"
    t.integer  "trainer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tokimons", force: :cascade do |t|
    t.string   "name"
    t.float    "weight"
    t.float    "height"
    t.integer  "fly"
    t.integer  "fight"
    t.integer  "fire"
    t.integer  "water"
    t.integer  "electric"
    t.integer  "ice"
    t.integer  "total"
    t.integer  "trainer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "bodytype"
  end

  create_table "trainers", force: :cascade do |t|
    t.string   "name"
    t.integer  "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "username"
    t.integer  "points"
    t.integer  "team_id"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "password_digest"
    t.boolean  "admin",           default: false, null: false
  end

  create_table "widgets", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "stock"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
