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

ActiveRecord::Schema.define(version: 20140602211448) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: true do |t|
    t.string   "name",                  limit: 100,                 null: false
    t.boolean  "is_friend",                         default: false, null: false
    t.string   "affiliate_field",       limit: 64
    t.string   "affiliate_value",       limit: 64
    t.text     "summary"
    t.integer  "summary_type",                      default: 1,     null: false
    t.integer  "contact_id",                        default: 0
    t.integer  "config_flags",                      default: 0,     null: false
    t.string   "street",                limit: 100
    t.string   "route",                 limit: 100
    t.string   "city",                  limit: 100
    t.string   "state",                 limit: 40
    t.string   "country_code",          limit: 2,   default: "us"
    t.string   "zipcode",               limit: 10
    t.string   "company_logo_filename", limit: 128
    t.text     "keywords"
    t.string   "website",               limit: 254
    t.string   "main_phone",            limit: 20
    t.string   "fax_phone",             limit: 20
    t.string   "free_phone",            limit: 20
    t.boolean  "is_public",                         default: true,  null: false
    t.boolean  "is_acceptterms",                    default: false, null: false
    t.string   "source_type",           limit: 32
    t.string   "source_id",             limit: 32
    t.string   "referral_type",         limit: 32
    t.string   "referral_id",           limit: 32
    t.string   "email",                 limit: 128
    t.text     "description"
    t.integer  "description_type",                  default: 1,     null: false
    t.text     "tracking_html"
    t.integer  "company_type",                      default: 10,    null: false
    t.integer  "ranking",                           default: 500,   null: false
    t.integer  "points",                            default: 0,     null: false
    t.integer  "member_level",                      default: 10,    null: false
    t.boolean  "is_enable_rfis",                    default: true,  null: false
    t.boolean  "provides_online",                   default: false, null: false
    t.boolean  "provides_ilt",                      default: false, null: false
    t.boolean  "provides_webinar",                  default: false, null: false
    t.boolean  "provides_lms_content",              default: false, null: false
    t.boolean  "provides_cd",                       default: false, null: false
    t.boolean  "provides_video",                    default: false, null: false
    t.boolean  "provides_dvd",                      default: false, null: false
    t.boolean  "provides_book",                     default: false, null: false
    t.boolean  "provider_profile_set",              default: false, null: false
    t.text     "question_template"
    t.integer  "country_id"
    t.integer  "state_id"
    t.integer  "city_id"
    t.integer  "local_id"
    t.string   "xcon_code",             limit: 40
    t.string   "active_currency",       limit: 3,   default: "usd", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "things", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
