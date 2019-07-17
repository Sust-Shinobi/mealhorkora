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

ActiveRecord::Schema.define(version: 2019_07_16_192740) do

  create_table "dinner_meals", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "items"
    t.float "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dinners", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.decimal "year", precision: 10
    t.string "month"
    t.decimal "day", precision: 10
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "haddinner"
    t.bigint "dinner_meal_id"
    t.index ["dinner_meal_id"], name: "index_dinners_on_dinner_meal_id"
    t.index ["user_id"], name: "index_dinners_on_user_id"
  end

  create_table "lunch_meals", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "items"
    t.float "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lunches", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.decimal "year", precision: 10
    t.string "month"
    t.decimal "day", precision: 10
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "hadlunch"
    t.bigint "lunch_meal_id"
    t.index ["lunch_meal_id"], name: "index_lunches_on_lunch_meal_id"
    t.index ["user_id"], name: "index_lunches_on_user_id"
  end

  create_table "preferrences", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "disliked_item"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_preferrences_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.text "password_digest"
    t.boolean "superuser"
    t.boolean "takes_lunch"
    t.boolean "takes_dinner"
    t.string "city"
    t.datetime "date_of_birth"
    t.text "address"
    t.string "profession"
    t.string "phone_no"
    t.string "religion"
  end

  add_foreign_key "dinners", "dinner_meals"
  add_foreign_key "dinners", "users"
  add_foreign_key "lunches", "lunch_meals"
  add_foreign_key "lunches", "users"
  add_foreign_key "preferrences", "users"
end
