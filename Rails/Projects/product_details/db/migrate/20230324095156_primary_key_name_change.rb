class PrimaryKeyNameChange < ActiveRecord::Migration[7.0]
  create_table "seller",id: false, force: true do |t|
    t.integer  "seller_id", primary_key: true
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index "seller_id", unique: true
  end
end
