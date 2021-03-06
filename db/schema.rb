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

ActiveRecord::Schema.define(version: 2021_12_08_125036) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "buys", force: :cascade do |t|
    t.bigint "webtoon_id"
    t.bigint "episode_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["episode_id"], name: "index_buys_on_episode_id"
    t.index ["webtoon_id"], name: "index_buys_on_webtoon_id"
  end

  create_table "comment2s", force: :cascade do |t|
    t.bigint "episode_id"
    t.bigint "user_id"
    t.text "usercomment2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["episode_id"], name: "index_comment2s_on_episode_id"
    t.index ["user_id"], name: "index_comment2s_on_user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.text "usercomment"
    t.bigint "episode_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["episode_id"], name: "index_comments_on_episode_id"
  end

  create_table "episodes", force: :cascade do |t|
    t.integer "round"
    t.integer "cookiecount"
    t.string "registration"
    t.text "content"
    t.integer "scope"
    t.bigint "webtoon_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["webtoon_id"], name: "index_episodes_on_webtoon_id"
  end

  create_table "homepages", force: :cascade do |t|
    t.string "na"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "homes", force: :cascade do |t|
    t.string "homename"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "gender"
    t.date "birth"
    t.string "phonenumber"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "webtoons", force: :cascade do |t|
    t.string "webtoonname"
    t.string "author"
    t.string "genre"
    t.text "summary"
    t.integer "attentioncount"
    t.string "day"
    t.string "stardate"
    t.integer "agelimit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "buys", "episodes"
  add_foreign_key "buys", "webtoons"
  add_foreign_key "comment2s", "episodes"
  add_foreign_key "comment2s", "users"
  add_foreign_key "comments", "episodes"
  add_foreign_key "episodes", "webtoons"
end
