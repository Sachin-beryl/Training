class Book < ApplicationRecord
  has_many :authors
  has_one :publisher
end
