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

ActiveRecord::Schema.define(version: 20160928235757) do

  create_table "enterprises", force: :cascade do |t|
    t.string   "name"
    t.integer  "reclamos_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "enterprises", ["reclamos_id"], name: "index_enterprises_on_reclamos_id"

  create_table "reclamos", force: :cascade do |t|
    t.integer  "enterprise_id"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "reclamos", ["enterprise_id"], name: "index_reclamos_on_enterprise_id"
  add_index "reclamos", ["user_id"], name: "index_reclamos_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.integer  "reclamos_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "enterprise_id"
  end

  add_index "users", ["enterprise_id"], name: "index_users_on_enterprise_id"
  add_index "users", ["reclamos_id"], name: "index_users_on_reclamos_id"

end
