# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.1].define(version: 2025_11_23_125433) do
  create_table "contact_submissions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "email", null: false
    t.text "message", null: false
    t.string "name", null: false
    t.string "site_owner_email", null: false
    t.string "site_url", null: false
    t.datetime "updated_at", null: false
    t.index ["created_at"], name: "index_contact_submissions_on_created_at"
    t.index ["site_owner_email"], name: "index_contact_submissions_on_site_owner_email"
    t.index ["site_url"], name: "index_contact_submissions_on_site_url"
  end
end
