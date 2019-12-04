# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_12_03_194542) do

  create_table "orders", force: :cascade do |t|
    t.string "origin"
    t.string "destination"
    t.string "plan"
    t.string "insurance"
    t.string "status"
    t.integer "vendor_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["vendor_id"], name: "index_orders_on_vendor_id"
  end

  create_table "rates", force: :cascade do |t|
    t.string "origin"
    t.string "destination"
    t.integer "basic"
    t.integer "advance"
    t.integer "premium"
    t.integer "insurance"
    t.integer "vendor_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["vendor_id"], name: "index_rates_on_vendor_id"
  end

  create_table "vendors", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "release"
    t.integer "delivered_orders"
    t.integer "failed_orders"
    t.integer "deal"
    t.integer "discount"
    t.integer "sla"
    t.integer "penalty"
    t.integer "balance_payment"
    t.integer "actual_payment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "orders", "vendors"
  add_foreign_key "rates", "vendors"
end
