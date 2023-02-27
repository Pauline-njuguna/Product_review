
ActiveRecord::Schema.define(version: 2022_11_06_205529) do

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.integer "price"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "star_rating"
    t.string "comment"
    t.integer "product_id"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
  end

end