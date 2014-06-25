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

ActiveRecord::Schema.define(version: 20140625011008) do

  create_table "auction_values", force: true do |t|
    t.integer  "player_id"
    t.integer  "year"
    t.integer  "min_price"
    t.integer  "max_price"
    t.integer  "avg_price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "auction_values", ["player_id"], name: "index_auction_values_on_player_id"

  create_table "byes", force: true do |t|
    t.integer  "team_id"
    t.integer  "year"
    t.integer  "week"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "byes", ["team_id"], name: "index_byes_on_team_id"

  create_table "draft_fantasy_teams", force: true do |t|
    t.integer "draft_id"
    t.integer "fantasy_team_id"
    t.integer "position"
  end

  add_index "draft_fantasy_teams", ["draft_id"], name: "index_draft_fantasy_teams_on_draft_id"
  add_index "draft_fantasy_teams", ["fantasy_team_id"], name: "index_draft_fantasy_teams_on_fantasy_team_id"

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

  create_table "draft_projections", force: true do |t|
    t.integer  "player_id"
    t.integer  "year"
    t.integer  "completions"
    t.integer  "attempts"
    t.integer  "passing_yards"
    t.integer  "passing_td"
    t.integer  "passing_int"
    t.integer  "rush_yards"
    t.integer  "rush_td"
    t.integer  "fantasy_points"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "draft_projections", ["player_id"], name: "index_draft_projections_on_player_id"

  create_table "draft_rankings", force: true do |t|
    t.integer  "player_id"
    t.integer  "year"
    t.float    "ffn_rank"
    t.integer  "position_rank"
    t.integer  "overall_rank"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "draft_rankings", ["player_id"], name: "index_draft_rankings_on_player_id"

  create_table "drafts", force: true do |t|
    t.integer  "league_id"
    t.integer  "max_amount"
    t.integer  "total_rounds"
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", force: true do |t|
    t.string  "first_name"
    t.string  "last_name"
    t.string  "name"
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
  end

  create_table "positions", force: true do |t|
    t.string "position"
  end

  create_table "schedules", force: true do |t|
    t.integer  "ffn_game_id"
    t.integer  "year"
    t.integer  "week"
    t.date     "date"
    t.integer  "away_team_id"
    t.integer  "home_team_id"
    t.string   "time"
    t.string   "broadcaster"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string "city"
    t.string "name"
    t.string "key"
    t.string "conference"
    t.string "division"
    t.string "logo"
  end

end
