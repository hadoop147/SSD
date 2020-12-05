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

ActiveRecord::Schema.define(version: 20201130212708) do

  create_table "addresses", force: :cascade do |t|
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "postcode"
    t.integer  "customer_id"
    t.integer  "payment_id"
    t.integer  "shipping_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["customer_id"], name: "index_addresses_on_customer_id"
    t.index ["payment_id"], name: "index_addresses_on_payment_id"
    t.index ["shipping_id"], name: "index_addresses_on_shipping_id"
  end

  create_table "admins", force: :cascade do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "phonenumber"
    t.date     "date_of_birth"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["user_id"], name: "index_admins_on_user_id"
  end

  create_table "brands", force: :cascade do |t|
    t.string   "brand_name"
    t.text     "description"
    t.date     "yearofestablishement"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "cat_name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "phonenumber"
    t.date     "date_of_birth"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["user_id"], name: "index_customers_on_user_id"
  end

  create_table "items", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.decimal  "price"
    t.string   "image_url"
    t.string   "category"
    t.string   "brand"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "offers", force: :cascade do |t|
    t.string   "offertype"
    t.text     "description"
    t.decimal  "pricereduction"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "orderitems", force: :cascade do |t|
    t.integer  "item_id"
    t.string   "title"
    t.text     "description"
    t.integer  "quantity"
    t.decimal  "price"
    t.integer  "order_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["order_id"], name: "index_orderitems_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "order_date"
    t.integer  "user_id"
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "payments", force: :cascade do |t|
    t.string   "pay_method"
    t.string   "card_number"
    t.date     "expiration_date"
    t.integer  "card_code"
    t.integer  "customer_id"
    t.integer  "shipping_id"
    t.integer  "order_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["customer_id"], name: "index_payments_on_customer_id"
    t.index ["order_id"], name: "index_payments_on_order_id"
    t.index ["shipping_id"], name: "index_payments_on_shipping_id"
  end

  create_table "products", force: :cascade do |t|
    t.string   "prod_name"
    t.text     "description"
    t.integer  "stock_quantity"
    t.string   "prod_gender"
    t.decimal  "prod_price"
    t.decimal  "prod_size"
    t.string   "colours"
    t.string   "image_url"
    t.integer  "offer_id"
    t.integer  "category_id"
    t.integer  "brand_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["brand_id"], name: "index_products_on_brand_id"
    t.index ["category_id"], name: "index_products_on_category_id"
    t.index ["offer_id"], name: "index_products_on_offer_id"
  end

  create_table "shippings", force: :cascade do |t|
    t.date     "date_shipped"
    t.integer  "customer_id"
    t.integer  "address_id"
    t.integer  "order_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["address_id"], name: "index_shippings_on_address_id"
    t.index ["customer_id"], name: "index_shippings_on_customer_id"
    t.index ["order_id"], name: "index_shippings_on_order_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
