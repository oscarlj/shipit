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

ActiveRecord::Schema.define(version: 20160920211647) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "name"
    t.integer  "office_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["office_id"], name: "index_employees_on_office_id", using: :btree
  end

  create_table "offices", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.integer  "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_offices_on_company_id", using: :btree
  end

  create_table "packages", force: :cascade do |t|
    t.date     "shipping"
    t.date     "delivery"
    t.integer  "company_id"
    t.integer  "office_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "status"
    t.string   "address"
    t.string   "description"
    t.index ["company_id"], name: "index_packages_on_company_id", using: :btree
    t.index ["office_id"], name: "index_packages_on_office_id", using: :btree
  end

  add_foreign_key "employees", "offices"
  add_foreign_key "offices", "companies"
  add_foreign_key "packages", "companies"
  add_foreign_key "packages", "offices"
end
