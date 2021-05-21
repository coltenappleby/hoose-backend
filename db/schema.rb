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

ActiveRecord::Schema.define(version: 2021_05_20_220922) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "favorited_zips", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "zip_code_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_favorited_zips_on_user_id"
    t.index ["zip_code_id"], name: "index_favorited_zips_on_zip_code_id"
  end

  create_table "housing_data", force: :cascade do |t|
    t.bigint "zip_code_id", null: false
    t.string "month"
    t.integer "year"
    t.integer "sales_count"
    t.integer "avg_price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["zip_code_id"], name: "index_housing_data_on_zip_code_id"
  end

  create_table "job_searches", force: :cascade do |t|
    t.bigint "zip_code_id", null: false
    t.boolean "remote"
    t.string "salary_estimate"
    t.string "search_term"
    t.integer "radius"
    t.string "job_type"
    t.string "experience_level"
    t.string "date_posted"
    t.integer "number_of_posts"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_job_searches_on_user_id"
    t.index ["zip_code_id"], name: "index_job_searches_on_zip_code_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "zip_codes", force: :cascade do |t|
    t.integer "zip"
    t.string "name"
    t.integer "population"
    t.string "state"
    t.string "county"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "favorited_zips", "users"
  add_foreign_key "favorited_zips", "zip_codes"
  add_foreign_key "housing_data", "zip_codes"
  add_foreign_key "job_searches", "users"
  add_foreign_key "job_searches", "zip_codes"
end
