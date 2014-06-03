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

ActiveRecord::Schema.define(version: 20140523230258) do

  create_table "draft_picks", force: true do |t|
    t.integer  "draft_id"
    t.integer  "fantasy_team_id"
    t.integer  "player_id"
    t.integer  "price"
    t.integer  "round"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "draft_picks", ["draft_id"], name: "index_draft_picks_on_draft_id"
  add_index "draft_picks", ["fantasy_team_id"], name: "index_draft_picks_on_fantasy_team_id"
  add_index "draft_picks", ["player_id"], name: "index_draft_picks_on_player_id"

  create_table "drafts", force: true do |t|
    t.integer  "league_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "drafts", ["league_id"], name: "index_drafts_on_league_id"

  create_table "fantasy_teams", force: true do |t|
    t.string   "name"
    t.string   "owner"
    t.integer  "league_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "leagues", force: true do |t|
    t.string   "name"
    t.integer  "max_amount"
    t.integer  "total_rounds"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", force: true do |t|
    t.string  "first_name"
    t.string  "last_name"
    t.integer "ffn_player_id"
    t.integer "position_id"
    t.integer "team_id"
    t.string  "completions"
    t.string  "attempts"
    t.string  "passing_yards"
    t.string  "passing_td"
    t.string  "passing_int"
    t.string  "rush_yards"
    t.string  "rush_td"
    t.string  "fantasy_points"
    t.boolean "active"
    t.string  "jersey"
    t.string  "height"
    t.string  "weight"
    t.date    "dob"
    t.string  "college"
    t.integer "min_price"
    t.integer "max_price"
    t.integer "avg_price"
    t.float   "ffn_rank"
    t.integer "position_rank"
    t.integer "overall_rank"
  end

  create_table "positions", force: true do |t|
    t.string "position"
  end

  create_table "teams", force: true do |t|
    t.string "name"
    t.string "short_name"
    t.string "division"
    t.string "logo"
  end

end
