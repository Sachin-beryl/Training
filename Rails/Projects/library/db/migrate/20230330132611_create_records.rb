class CreateRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :records do |t|
      t.boolean :borrowed
      t.references :book_record, null: false, foreign_key: true

      t.timestamps
    end
  end
end
