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

ActiveRecord::Schema.define(version: 20150423191315) do

  create_table "aquaria", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "aquaria", ["user_id"], name: "index_aquaria_on_user_id"

  create_table "aquaria_fish", force: :cascade do |t|
    t.integer "aquarium_id"
    t.integer "fish_id"
  end

  add_index "aquaria_fish", ["aquarium_id"], name: "index_aquaria_fish_on_aquarium_id"
  add_index "aquaria_fish", ["fish_id"], name: "index_aquaria_fish_on_fish_id"

  create_table "fish", force: :cascade do |t|
    t.integer  "aquarium_id"
    t.string   "name"
    t.string   "dwarf_angels"
    t.string   "large_angels"
    t.string   "anglers_frogs"
    t.string   "anthias"
    t.string   "basslets"
    t.string   "batfish"
    t.string   "blennies"
    t.string   "boxfish"
    t.string   "butterflies"
    t.string   "cardinals"
    t.string   "chromis"
    t.string   "clownfish"
    t.string   "damsels"
    t.string   "dartfish"
    t.string   "dragonets"
    t.string   "eels"
    t.string   "filefish"
    t.string   "foxface_rabbits"
    t.string   "gobies"
    t.string   "groupers"
    t.string   "grunts_sweetlips"
    t.string   "jawfish"
    t.string   "hawkfish"
    t.string   "hogfish"
    t.string   "lions_scorpions"
    t.string   "parrotfish"
    t.string   "pseudochromis"
    t.string   "puffers"
    t.string   "seahorse_pipefish"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "sharks_rays"
    t.string   "squirrelfish"
    t.string   "tangs_surgeons"
    t.string   "triggerfish"
    t.string   "wrasse_reef_safe"
    t.string   "wrasse_fish_only"
    t.string   "live_corals"
    t.string   "invertebrates"
    t.string   "live_rock_sand"
    t.string   "wiki_url"
  end

  add_index "fish", ["aquarium_id"], name: "index_fish_on_aquarium_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.text     "about"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

end
