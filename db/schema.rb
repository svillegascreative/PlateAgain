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

ActiveRecord::Schema.define(version: 20170306234649) do

  create_table "comments", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "listing_id"
    t.text     "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "listings", force: :cascade do |t|
    t.string   "item_name"
    t.string   "quantity"
    t.boolean  "perishable"
    t.integer  "user_id"
    t.date     "expiry_date"
    t.datetime "available_until"
    t.string   "contact_name"
    t.string   "contact_phone"
    t.string   "contact_email"
    t.string   "picture"
    t.text     "notes"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.boolean  "claimed"
    t.integer  "claimer_id"
    t.boolean  "available"
    t.string   "full_street_address"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email",               null: false
    t.string   "full_street_address"
    t.string   "phone"
    t.string   "description"
    t.string   "homepage"
    t.string   "photo"
    t.string   "registration"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.boolean  "is_provider"
    t.string   "crypted_password"
    t.string   "salt"
    t.string   "username"
    t.float    "latitude"
    t.float    "longitude"
  end

end
