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

ActiveRecord::Schema.define(version: 20161231192233) do

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "manager"
    t.string   "status"
    t.integer  "terms"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "job_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.datetime "date"
    t.string   "customer"
    t.decimal  "tax"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "status_type"
    t.integer  "employee_id"
  end

  create_table "purchases", force: :cascade do |t|
    t.string   "name"
    t.string   "category"
    t.integer  "quantity"
    t.integer  "invoice_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["invoice_id"], name: "index_purchases_on_invoice_id"
  end

end
