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

ActiveRecord::Schema[7.0].define(version: 2023_04_04_073214) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.bigint "book_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_authors_on_book_id"
  end

  create_table "book_categories", force: :cascade do |t|
    t.bigint "book_id", null: false
    t.bigint "category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_book_categories_on_book_id"
    t.index ["category_id"], name: "index_book_categories_on_category_id"
  end

  create_table "book_records", force: :cascade do |t|
    t.bigint "book_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_book_records_on_book_id"
  end

  create_table "books", force: :cascade do |t|
    t.string "name"
    t.string "book_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "lock_version"
  end

  create_table "books_borrowers", id: false, force: :cascade do |t|
    t.bigint "book_id", null: false
    t.bigint "borrower_id", null: false
  end

  create_table "borrowers", force: :cascade do |t|
    t.string "name"
    t.string "borrower_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "parent_id"
    t.index ["parent_id"], name: "index_categories_on_parent_id"
  end

  create_table "feedbacks", force: :cascade do |t|
    t.text "content"
    t.string "feedbackable_type"
    t.bigint "feedbackable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["feedbackable_type", "feedbackable_id"], name: "index_feedbacks_on_feedbackable"
  end

  create_table "publishers", force: :cascade do |t|
    t.string "name"
    t.bigint "book_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_publishers_on_book_id"
  end

  create_table "records", force: :cascade do |t|
    t.boolean "borrowed"
    t.bigint "book_record_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_record_id"], name: "index_records_on_book_record_id"
  end

  create_table "sections", force: :cascade do |t|
    t.string "name"
    t.integer "parent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "authors", "books"
  add_foreign_key "book_categories", "books"
  add_foreign_key "book_categories", "categories"
  add_foreign_key "book_records", "books"
  add_foreign_key "categories", "categories", column: "parent_id"
  add_foreign_key "publishers", "books"
  add_foreign_key "records", "book_records"
end
