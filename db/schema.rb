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

ActiveRecord::Schema.define(version: 20140602113018) do

  create_table "colours", force: true do |t|
    t.string   "name"
    t.string   "hex_value"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "white_on_black"
  end

  create_table "quotes", force: true do |t|
    t.text     "quote"
    t.string   "author"
    t.boolean  "favorite",   default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "colour_id"
  end

  add_index "quotes", ["colour_id"], name: "index_quotes_on_colour_id"

end
