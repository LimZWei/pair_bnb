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

ActiveRecord::Schema.define(version: 20160115032817) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "listings", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "address"
    t.string   "hometype"
    t.string   "roomtype"
    t.string   "number_of_beds"
    t.string   "bedtype"
    t.string   "listing_name"
    t.text     "summary"
    t.string   "country"
    t.string   "city"
    t.string   "address2"
    t.string   "state"
    t.string   "zipcode"
    t.boolean  "essentials"
    t.boolean  "tv"
    t.boolean  "cabletv"
    t.boolean  "aircond"
    t.boolean  "heating"
    t.boolean  "kitchen"
    t.boolean  "internet"
    t.boolean  "wireless"
    t.boolean  "anytime"
    t.boolean  "hottub"
    t.boolean  "washer"
    t.boolean  "pool"
    t.boolean  "dryer"
    t.boolean  "breakfast"
    t.boolean  "freeparking"
    t.boolean  "gym"
    t.boolean  "elevator"
    t.boolean  "fireplace"
    t.boolean  "intercom"
    t.boolean  "doorman"
    t.boolean  "shampoo"
    t.boolean  "hangers"
    t.boolean  "hairdryer"
    t.boolean  "iron"
    t.boolean  "laptopfriendly"
    t.boolean  "familyfriendly"
    t.boolean  "smoking"
    t.boolean  "events"
    t.boolean  "petsin"
    t.boolean  "wheelchair"
    t.boolean  "smokedetector"
    t.boolean  "carbonmonoxide_detector"
    t.boolean  "firstaid"
    t.boolean  "safetycard"
    t.boolean  "extinguisher"
    t.string   "extinguisher_location"
    t.string   "fire_alarm_location"
    t.string   "gas_shut_off_location"
    t.text     "emergency_exit"
    t.string   "emergency_phone"
    t.string   "the_space"
    t.string   "guest_access"
    t.string   "interactions"
    t.string   "other_things"
    t.string   "houserules"
    t.string   "neighbour_overview"
    t.string   "neighbour_getting_around"
    t.string   "current"
    t.boolean  "booking_mode"
    t.boolean  "available_mode"
    t.string   "number"
    t.integer  "price"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "encrypted_password", limit: 128
    t.string   "confirmation_token", limit: 128
    t.string   "remember_token",     limit: 128
    t.string   "provider"
    t.string   "uid"
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree
  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree

end
