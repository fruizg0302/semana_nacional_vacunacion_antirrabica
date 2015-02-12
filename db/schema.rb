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

ActiveRecord::Schema.define(version: 20150212013457) do

  create_table "eight_annexes", force: true do |t|
    t.integer  "perros_estimados"
    t.integer  "gatos_estimados"
    t.integer  "total_estimados"
    t.integer  "perros_por_vacunar"
    t.integer  "gatos_por_vacunar"
    t.integer  "total_por_vacunar"
    t.integer  "perros_vsn"
    t.integer  "gatos_vsn"
    t.integer  "total_vsn"
    t.integer  "brigadas_dia"
    t.integer  "puestos_fijos"
    t.integer  "numero_de_dias"
    t.integer  "jurisdiction_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jurisdictions", force: true do |t|
    t.string   "jurisdiction_name"
    t.integer  "state_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "states", force: true do |t|
    t.string   "state_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
