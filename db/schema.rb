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

ActiveRecord::Schema.define(version: 2018_12_27_093256) do

  create_table "comments", force: :cascade do |t|
    t.integer "user_id"
    t.integer "video_id"
    t.integer "post_id"
    t.text "body"
    t.boolean "reply"
    t.integer "reply_to"
    t.boolean "video"
    t.boolean "post"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer "priority", default: 0, null: false
    t.integer "attempts", default: 0, null: false
    t.text "handler", null: false
    t.text "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string "locked_by"
    t.string "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["priority", "run_at"], name: "delayed_jobs_priority"
  end

  create_table "pages", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.boolean "legal"
    t.boolean "normal_page"
    t.boolean "add_to_footer"
    t.boolean "add_to_sidemenu"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "videos", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "user_id"
    t.string "duration"
    t.string "quality"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "media_file_name"
    t.string "media_content_type"
    t.integer "media_file_size"
    t.datetime "media_updated_at"
    t.string "size"
    t.string "bitrate"
    t.string "resolution"
    t.string "video_stream"
    t.string "video_codec"
    t.string "colorspace"
    t.string "width"
    t.string "height"
    t.string "audio_stream"
    t.string "audio_codec"
    t.string "audio_sample_rate"
    t.string "audio_channels"
    t.string "progress"
    t.string "progress_status"
  end

end
