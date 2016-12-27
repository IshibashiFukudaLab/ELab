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

ActiveRecord::Schema.define(version: 20161227024913) do

  create_table "big_categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "colleges", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "company_labs", force: :cascade do |t|
    t.integer  "company_id"
    t.integer  "lab_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_company_labs_on_company_id"
    t.index ["lab_id"], name: "index_company_labs_on_lab_id"
  end

  create_table "labs", force: :cascade do |t|
    t.integer  "college_id"
    t.string   "name",         null: false
    t.string   "teacher"
    t.string   "message"
    t.string   "mail"
    t.string   "theme"
    t.text     "theme_detail"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["college_id"], name: "index_labs_on_college_id"
  end

  create_table "lesson_labs", force: :cascade do |t|
    t.integer  "lesson_id"
    t.integer  "lab_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lab_id"], name: "index_lesson_labs_on_lab_id"
    t.index ["lesson_id"], name: "index_lesson_labs_on_lesson_id"
  end

  create_table "lessons", force: :cascade do |t|
    t.integer  "college_id"
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["college_id"], name: "index_lessons_on_college_id"
  end

  create_table "people", force: :cascade do |t|
    t.integer  "lab_id"
    t.string   "name",       null: false
    t.string   "grade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lab_id"], name: "index_people_on_lab_id"
  end

  create_table "people_labs", force: :cascade do |t|
    t.integer  "people_id"
    t.integer  "labs_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["labs_id"], name: "index_people_labs_on_labs_id"
    t.index ["people_id"], name: "index_people_labs_on_people_id"
  end

  create_table "small_categories", force: :cascade do |t|
    t.integer  "big_category_id"
    t.string   "name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["big_category_id"], name: "index_small_categories_on_big_category_id"
  end

  create_table "small_category_labs", force: :cascade do |t|
    t.integer  "small_category_id"
    t.integer  "lab_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["lab_id"], name: "index_small_category_labs_on_lab_id"
    t.index ["small_category_id"], name: "index_small_category_labs_on_small_category_id"
  end

end
