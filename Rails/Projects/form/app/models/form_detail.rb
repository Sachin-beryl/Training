class FormDetail < ApplicationRecord
  validates :name, presence: true
  validates :gender, presence: true
  validates :age, presence: true
  validates :address, presence: true
  validates :terms_and_conditions, acceptance: { message: 'must be accepted' }
  validates :relocate, acceptance: { accept: ['yes','no'] }, presence: true
end
