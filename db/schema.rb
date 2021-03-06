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

ActiveRecord::Schema.define(version: 20190316183234) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "complications", force: :cascade do |t|
    t.string   "title"
    t.integer  "area"
    t.integer  "severity"
    t.text     "comment"
    t.integer  "operation_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["operation_id"], name: "index_complications_on_operation_id", using: :btree
  end

  create_table "cpt_operations", force: :cascade do |t|
    t.integer  "cpt_id"
    t.integer  "operation_id"
    t.integer  "order"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["cpt_id"], name: "index_cpt_operations_on_cpt_id", using: :btree
    t.index ["operation_id"], name: "index_cpt_operations_on_operation_id", using: :btree
  end

  create_table "cpts", force: :cascade do |t|
    t.string   "category"
    t.string   "code"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
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
    t.string   "firstname"
    t.string   "lastname"
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

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "complications", "operations"
  add_foreign_key "operations", "patients"
  add_foreign_key "operations", "surgeons"
end
