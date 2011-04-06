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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110406160024) do

  create_table "materials", :force => true do |t|
    t.string   "name_fr"
    t.string   "name_en"
    t.boolean  "valid",      :default => true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_translations", :force => true do |t|
    t.integer  "product_id"
    t.string   "locale"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "product_translations", ["product_id"], :name => "index_product_translations_on_product_id"

  create_table "products", :force => true do |t|
    t.text     "description_fr"
    t.text     "description_en"
    t.integer  "category_id"
    t.date     "purchase_date"
    t.integer  "manufacture_year"
    t.float    "purchase_price"
    t.integer  "qty_in_stock"
    t.integer  "qty_in_stock_adj"
    t.integer  "country_id"
    t.float    "height"
    t.float    "width"
    t.float    "length"
    t.integer  "material_id"
    t.integer  "style_id"
    t.binary   "photo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
