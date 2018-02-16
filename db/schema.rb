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

ActiveRecord::Schema.define(version: 20180216005316) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "hits", force: :cascade do |t|
    t.bigint "player_id"
    t.bigint "round_id"
    t.integer "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_hits_on_player_id"
    t.index ["round_id"], name: "index_hits_on_round_id"
  end

  create_table "passes", force: :cascade do |t|
    t.bigint "player_id"
    t.bigint "round_id"
    t.integer "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_passes_on_player_id"
    t.index ["round_id"], name: "index_passes_on_round_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.integer "number"
    t.bigint "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_players_on_team_id"
  end

  create_table "rounds", force: :cascade do |t|
    t.string "name"
    t.bigint "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_rounds_on_team_id"
  end

  create_table "spikes", force: :cascade do |t|
    t.bigint "player_id"
    t.bigint "round_id"
    t.integer "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_spikes_on_player_id"
    t.index ["round_id"], name: "index_spikes_on_round_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "hits", "players"
  add_foreign_key "hits", "rounds"
  add_foreign_key "passes", "players"
  add_foreign_key "passes", "rounds"
  add_foreign_key "spikes", "players"
  add_foreign_key "spikes", "rounds"
end
