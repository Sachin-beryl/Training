class BookRecord < ApplicationRecord
  belongs_to :book, autosave: true
  has_one :record
end
