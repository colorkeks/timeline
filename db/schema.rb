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

ActiveRecord::Schema.define(version: 20140321105340) do

  create_table "time_items", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "high_threshold"
    t.integer  "importance"
    t.string   "image"
    t.integer  "timeline_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "time_points", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.date     "start_date"
    t.integer  "high_threshold"
    t.integer  "importance"
    t.string   "image"
    t.integer  "timeline_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "timelines", force: true do |t|
    t.string   "title"
    t.date     "focus_date"
    t.integer  "initial_zoom"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
