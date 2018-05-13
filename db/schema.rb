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

ActiveRecord::Schema.define(version: 20180513011052) do

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.boolean "this_month", default: false
    t.integer "interval", default: 3
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.string "email"
    t.datetime "last_contacted"
    t.index ["user_id"], name: "index_contacts_on_user_id"
  end

  create_table "page_users", force: :cascade do |t|
    t.string "medium_link"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.text "comment"
    t.integer "contact_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "tags"
    t.index ["contact_id"], name: "index_profiles_on_contact_id"
  end

  create_table "reminders", force: :cascade do |t|
    t.datetime "date"
    t.string "content"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_reminders_on_user_id"
  end

  create_table "subscribers", force: :cascade do |t|
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "uid"
    t.string "provider"
    t.string "name"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "location"
    t.string "country_code"
    t.string "description"
    t.string "image_url"
    t.string "profile_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["uid"], name: "index_users_on_uid"
  end

# Could not dump table "vaughn_users" because of following StandardError
#   Unknown type '' for column 'portrait_feature'

  create_table "writers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
