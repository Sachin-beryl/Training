class SchemaDump < ActiveRecord::Migration[7.0]
  create_table "manager", force: true do |t|
      t.string   "name"
      t.datetime "created_at"
      t.datetime "updated_at"
  end
end
