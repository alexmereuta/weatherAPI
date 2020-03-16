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

ActiveRecord::Schema.define(version: 20200314225128) do

  create_table "weathers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.float "TempD1H0", limit: 24
    t.float "TempD1H3", limit: 24
    t.float "TempD1H6", limit: 24
    t.float "TempD1H9", limit: 24
    t.float "TempD1H12", limit: 24
    t.float "TempD1H15", limit: 24
    t.float "TempD1H18", limit: 24
    t.float "TempD1H21", limit: 24
    t.float "TempD2H0", limit: 24
    t.float "TempD2H3", limit: 24
    t.float "TempD2H6", limit: 24
    t.float "TempD2H9", limit: 24
    t.float "TempD2H12", limit: 24
    t.float "TempD2H15", limit: 24
    t.float "TempD2H18", limit: 24
    t.float "TempD2H21", limit: 24
    t.float "TempD3H0", limit: 24
    t.float "TempD3H3", limit: 24
    t.float "TempD3H6", limit: 24
    t.float "TempD3H9", limit: 24
    t.float "TempD3H12", limit: 24
    t.float "TempD3H15", limit: 24
    t.float "TempD3H18", limit: 24
    t.float "TempD3H21", limit: 24
    t.float "TempD4H0", limit: 24
    t.float "TempD4H3", limit: 24
    t.float "TempD4H6", limit: 24
    t.float "TempD4H9", limit: 24
    t.float "TempD4H12", limit: 24
    t.float "TempD4H15", limit: 24
    t.float "TempD4H18", limit: 24
    t.float "TempD4H21", limit: 24
    t.float "TempD5H0", limit: 24
    t.float "TempD5H3", limit: 24
    t.float "TempD5H6", limit: 24
    t.float "TempD5H9", limit: 24
    t.float "TempD5H12", limit: 24
    t.float "TempD5H15", limit: 24
    t.float "TempD5H18", limit: 24
    t.float "TempD5H21", limit: 24
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
