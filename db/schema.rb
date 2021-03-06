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

ActiveRecord::Schema.define(version: 20170707205902) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "pg_trgm"

  create_table "discussions", force: :cascade do |t|
    t.string "session_id"
    t.string "station_start"
    t.string "station_end"
    t.boolean "insulted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "insults", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "replays", force: :cascade do |t|
    t.string "user_said"
    t.string "bot_said"
    t.text "req"
    t.text "res"
    t.bigint "discussion_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["discussion_id"], name: "index_replays_on_discussion_id"
  end

  create_table "stations", force: :cascade do |t|
    t.string "name"
    t.string "human_name"
    t.text "synonyms"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
