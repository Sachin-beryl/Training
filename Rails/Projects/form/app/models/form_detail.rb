class FormDetail < ApplicationRecord
  validates :name, presence: true
  validates :gender, presence: true
  validates :age, presence: true
  validates :address, presence: true
end
