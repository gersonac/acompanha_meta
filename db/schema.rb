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

ActiveRecord::Schema.define(version: 20160630160253) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "celulas", force: :cascade do |t|
    t.integer  "year",        null: false
    t.integer  "month",       null: false
    t.integer  "day",         null: false
    t.float    "value",       null: false
    t.integer  "planilha_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "celulas", ["planilha_id"], name: "index_celulas_on_planilha_id", using: :btree

  create_table "metas", force: :cascade do |t|
    t.integer  "year",         null: false
    t.integer  "month",         null: false
    t.float    "value",       null: false
    t.integer  "planilha_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "metas", ["planilha_id"], name: "index_metas_on_planilha_id", using: :btree

  create_table "planilhas", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float    "meta"
    t.integer  "year"
  end

  add_index "planilhas", ["user_id"], name: "index_planilhas_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

  add_foreign_key "celulas", "planilhas"
  add_foreign_key "metas", "planilhas"
  add_foreign_key "planilhas", "users"
end
