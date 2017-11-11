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

ActiveRecord::Schema.define(version: 20171111031057) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cpt_codes", force: :cascade do |t|
    t.string   "cats"
    t.string   "mouse"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "op_code_links", force: :cascade do |t|
    t.integer  "cpt_code_id"
    t.integer  "operation_id"
    t.integer  "order"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["cpt_code_id"], name: "index_op_code_links_on_cpt_code_id", using: :btree
    t.index ["operation_id"], name: "index_op_code_links_on_operation_id", using: :btree
  end

  create_table "operations", force: :cascade do |t|
    t.date     "or_date"
    t.integer  "surgeon_id"
    t.integer  "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_operations_on_patient_id", using: :btree
    t.index ["surgeon_id"], name: "index_operations_on_surgeon_id", using: :btree
  end

  create_table "patients", force: :cascade do |t|
    t.string   "mrn"
    t.date     "dob"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", force: :cascade do |t|
    t.string   "abbrev"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "surgeons", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "op_code_links", "cpt_codes"
  add_foreign_key "op_code_links", "operations"
  add_foreign_key "operations", "patients"
  add_foreign_key "operations", "surgeons"
end
