class FormDetail < ApplicationRecord
  validates :name, presence: true, format: { with: /\A[a-zA-Z]+\z/,message: "only allows letters" }
  validates :gender, presence: true
  validates :age, presence: true
  validates :address, presence: true, exclusion: { in: %w(delhi up mp),message: "%{value} is invalid ." }
  validates :terms_and_conditions, acceptance: { message: 'must be accepted' }
  validates :relocate, acceptance: { accept: ['yes','no'] }, presence: true
  validates :email, confirmation: true, presence: true
  validates :email_confirmation, presence: true
  validates :form_id, comparison: { greater_than_or_equal_to: 1000 }, presence:true 
  validates :identity, inclusion: { in: %w(aadhar_card pan_card driving_license),message: "%{value} is invalid"}
end
