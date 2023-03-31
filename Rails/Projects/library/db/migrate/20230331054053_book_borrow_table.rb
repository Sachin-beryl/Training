class BookBorrowTable < ActiveRecord::Migration[7.0]
  def change
    create_table :book_borrowers do |t|
      t.integer :book_id
      t.integer :borrower_id
      t.timestamps
    end
  end
end
