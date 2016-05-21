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

ActiveRecord::Schema.define(version: 20160521011137) do

  create_table "hourdate_reserveds", force: :cascade do |t|
    t.time     "hora"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.boolean  "enable",          default: true
    t.integer  "study_carrel_id"
    t.time     "horaFinal"
  end

  add_index "hourdate_reserveds", ["study_carrel_id"], name: "index_hourdate_reserveds_on_study_carrel_id"

  create_table "reservations", force: :cascade do |t|
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "study_carrel_id"
    t.integer  "student_id"
    t.date     "reserved_day"
    t.integer  "hourdate_reserved_id"
  end

  add_index "reservations", ["hourdate_reserved_id"], name: "index_reservations_on_hourdate_reserved_id"
  add_index "reservations", ["student_id"], name: "index_reservations_on_student_id"
  add_index "reservations", ["study_carrel_id"], name: "index_reservations_on_study_carrel_id"

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "account_number"
  end

  create_table "study_carrels", force: :cascade do |t|
    t.integer  "max_number"
    t.string   "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
