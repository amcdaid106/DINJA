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

ActiveRecord::Schema.define(version: 20160829122303) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "banished_ingredients", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "ingredient_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["ingredient_id"], name: "index_banished_ingredients_on_ingredient_id", using: :btree
    t.index ["user_id"], name: "index_banished_ingredients_on_user_id", using: :btree
  end

  create_table "doses", force: :cascade do |t|
    t.integer  "ingredient_id"
    t.integer  "recipe_id"
    t.string   "measure"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["ingredient_id"], name: "index_doses_on_ingredient_id", using: :btree
    t.index ["recipe_id"], name: "index_doses_on_recipe_id", using: :btree
  end

  create_table "ingredients", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_items", force: :cascade do |t|
    t.integer  "order_id"
    t.integer  "recipe_id"
    t.integer  "quantity"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "recipe_name"
    t.integer  "recipe_price"
    t.index ["order_id"], name: "index_order_items_on_order_id", using: :btree
    t.index ["recipe_id"], name: "index_order_items_on_recipe_id", using: :btree
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "price",         default: 0
    t.integer  "user_id"
    t.string   "status"
    t.date     "delivery_date"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.json     "payment"
    t.index ["user_id"], name: "index_orders_on_user_id", using: :btree
  end

  create_table "recipes", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "price"
    t.string   "photo"
    t.text     "instructions"
    t.integer  "prep_time"
    t.integer  "cooking_time"
    t.string   "category"
    t.integer  "calories"
    t.boolean  "vegetarian"
    t.boolean  "vegan"
    t.boolean  "gluten_free"
    t.boolean  "egg_free"
    t.boolean  "dairy_free"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.boolean  "no_gluten"
    t.boolean  "no_eggs"
    t.boolean  "no_dairy"
    t.boolean  "vegetarian"
    t.boolean  "vegan"
    t.integer  "max_calories"
    t.integer  "max_prep_time"
    t.boolean  "is_admin"
    t.string   "provider"
    t.string   "uid"
    t.string   "token"
    t.datetime "token_expiry"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "banished_ingredients", "ingredients"
  add_foreign_key "banished_ingredients", "users"
  add_foreign_key "doses", "ingredients"
  add_foreign_key "doses", "recipes"
  add_foreign_key "order_items", "orders"
  add_foreign_key "order_items", "recipes"
  add_foreign_key "orders", "users"
end
