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

ActiveRecord::Schema.define(version: 20201212163051) do

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
    t.integer "apiId"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
