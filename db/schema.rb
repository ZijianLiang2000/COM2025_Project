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

ActiveRecord::Schema.define(version: 20201212001327) do

  create_table "games", force: :cascade do |t|
    t.string "homeTeamName", null: false
    t.string "awayTeamName", null: false
    t.integer "gameWinnerId"
    t.integer "homeTeamScore"
    t.integer "awayTeamScore"
    t.date "gameDate", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games_teams", id: false, force: :cascade do |t|
    t.integer "game_id", null: false
    t.integer "team_id", null: false
    t.string "team_Name"
    t.index ["game_id", "team_id"], name: "index_games_teams_on_game_id_and_team_id"
    t.index ["team_Name"], name: "index_games_teams_on_team_Name"
    t.index ["team_id", "game_id"], name: "index_games_teams_on_team_id_and_game_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "teamName"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
