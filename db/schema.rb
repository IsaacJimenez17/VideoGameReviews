# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_02_17_000008) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "developers", force: :cascade do |t|
    t.string "name"
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
  end

  create_table "platforms", force: :cascade do |t|
    t.string "name"
  end

  create_table "publishers", force: :cascade do |t|
    t.string "name"
  end

  create_table "video_games", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.date "release_date"
  end

  create_table "video_games_developers", id: false, force: :cascade do |t|
    t.bigint "video_game_id", null: false
    t.bigint "developer_id", null: false
    t.index ["developer_id"], name: "index_video_games_developers_on_developer_id"
    t.index ["video_game_id"], name: "index_video_games_developers_on_video_game_id"
  end

  create_table "video_games_genres", id: false, force: :cascade do |t|
    t.bigint "video_game_id", null: false
    t.bigint "genre_id", null: false
    t.index ["genre_id"], name: "index_video_games_genres_on_genre_id"
    t.index ["video_game_id"], name: "index_video_games_genres_on_video_game_id"
  end

  create_table "video_games_platforms", id: false, force: :cascade do |t|
    t.bigint "video_game_id", null: false
    t.bigint "platform_id", null: false
    t.index ["platform_id"], name: "index_video_games_platforms_on_platform_id"
    t.index ["video_game_id"], name: "index_video_games_platforms_on_video_game_id"
  end

  create_table "video_games_publishers", id: false, force: :cascade do |t|
    t.bigint "video_game_id", null: false
    t.bigint "publisher_id", null: false
    t.index ["publisher_id"], name: "index_video_games_publishers_on_publisher_id"
    t.index ["video_game_id"], name: "index_video_games_publishers_on_video_game_id"
  end

end
