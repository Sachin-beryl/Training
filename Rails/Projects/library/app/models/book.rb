class Book < ApplicationRecord
  has_many :authors
  has_one :publisher

  # for has_many :through: 
  has_many :book_categories
  has_many :categories, through: :book_categories

  #for has_one :through
  has_one :book_record
  has_one :record, through: :book_record

  #for has_and_belongs_to_many
  has_and_belongs_to_many :borrowers
end
