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

ActiveRecord::Schema.define(version: 20180516192529) do

  create_table "bookings", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "route_id"
    t.integer "cbm"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status"
    t.string "shipment_status"
    t.index ["customer_id"], name: "index_bookings_on_customer_id"
    t.index ["route_id"], name: "index_bookings_on_route_id"
    t.index ["shipment_status"], name: "index_bookings_on_shipment_status"
    t.index ["status"], name: "index_bookings_on_status"
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "company"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "freight_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ports", force: :cascade do |t|
    t.string "name"
    t.decimal "lat", precision: 10, scale: 6
    t.decimal "lng", precision: 10, scale: 6
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "routes", force: :cascade do |t|
    t.integer "origin_id"
    t.integer "destination_id"
    t.integer "freight_type_id"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "bookings_count"
    t.index ["destination_id"], name: "index_routes_on_destination_id"
    t.index ["freight_type_id"], name: "index_routes_on_freight_type_id"
    t.index ["origin_id"], name: "index_routes_on_origin_id"
  end

end
