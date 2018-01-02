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

ActiveRecord::Schema.define(version: 20181207114242) do

  create_table "articles", force: :cascade do |t|
    t.string "author"
    t.datetime "published_at"
    t.text "body"
    t.string "title"
    t.string "subtitle"
    t.integer "team_id"
    t.integer "competition_id"
    t.integer "result_id"
    t.string "foto"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer "article_id"
    t.string "creator"
    t.datetime "published_at"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "competitions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "competitions_teams", force: :cascade do |t|
    t.integer "competition_id"
    t.integer "team_id"
    t.index ["competition_id"], name: "index_competitions_teams_on_competition_id"
    t.index ["team_id"], name: "index_competitions_teams_on_team_id"
  end

  create_table "player_stats", force: :cascade do |t|
    t.string "name"
    t.integer "value"
    t.integer "player_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.integer "number"
    t.integer "team_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "results", force: :cascade do |t|
    t.integer "localPoints"
    t.integer "visitorPoints"
    t.datetime "date"
    t.integer "competition_id"
    t.integer "team_id_local"
    t.integer "team_id_visitor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "team_stats", force: :cascade do |t|
    t.string "name"
    t.integer "value"
    t.integer "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "hashed_password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
