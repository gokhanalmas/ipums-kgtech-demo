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

ActiveRecord::Schema.define(version: 2021_09_02_083803) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource"
  end

  create_table "countries", force: :cascade do |t|
    t.string "short_name"
    t.string "full_name"
    t.string "continent"
    t.boolean "is_old"
    t.text "abbrev_long"
    t.boolean "hide_status"
    t.string "stats_office"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "geog_units", force: :cascade do |t|
    t.string "label", limit: 255
    t.string "code", limit: 8
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "samples", force: :cascade do |t|
    t.string "name"
    t.bigint "country_id"
    t.integer "year"
    t.decimal "density", precision: 6, scale: 3
    t.string "note"
    t.integer "h_records"
    t.integer "p_records"
    t.boolean "is_old"
    t.boolean "use_suffix"
    t.string "data_file_name"
    t.integer "hide_status"
    t.string "sample_value"
    t.string "list"
    t.string "short_description"
    t.string "display_group"
    t.boolean "is_puerto_rico"
    t.integer "freq_order"
    t.string "medium_description"
    t.string "data_provider", limit: 512
    t.string "long_description"
    t.integer "display_order"
    t.boolean "is_sda"
    t.integer "month"
    t.string "fingerprint_sha512", limit: 128
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "universes", force: :cascade do |t|
    t.string "sample_statement"
    t.text "universe_statement"
    t.boolean "display_sample_statement"
    t.boolean "make_sample_statement"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
