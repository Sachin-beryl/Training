class Category < ApplicationRecord
  self.table_name = "categories"     #specify the table name for category model.
  has_many :book_categories
  has_many :books, through: :book_categories
end
