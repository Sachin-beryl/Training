class BookRecord < ApplicationRecord
  belongs_to :book
  has_one :record
end
