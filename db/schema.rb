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

ActiveRecord::Schema.define(version: 20170824111919) do

  create_table "choices", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.text     "example"
    t.integer  "rating"
    t.integer  "toolbox_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["toolbox_id"], name: "index_choices_on_toolbox_id"
  end

  create_table "prozesses", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.boolean  "istprozess"
    t.boolean  "abletoviernull"
    t.integer  "statusprozess"
    t.boolean  "bestsolution"
    t.integer  "istproz_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["istproz_id"], name: "index_prozesses_on_istproz_id"
  end

  create_table "toolboxes", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "kategorie"
    t.string   "gruppe"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
