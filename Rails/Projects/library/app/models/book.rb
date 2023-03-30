class Book < ApplicationRecord
  has_many :authors
  has_one :publisher

  # for has_one :through: 
  has_many :book_categories
  has_many :categories, through: :book_categories
end
