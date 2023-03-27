class FormDetail < ApplicationRecord
  class NameValidator < ActiveModel::Validator     #create validation
    def validate(record)
      if record.name == "neeraj"
        record.errors.add :name, "can't be neeraj"
      end
    end
  end

  validates_each :name do |record, attr, value|   #check for name start with capital letter.
    record.errors.add(attr, 'must start with upper case') if value =~ /\A[[:lower:]]/
  end

  validates_with NameValidator     #calling created validation
  validates :name, presence: true, format: { with: /\A[a-zA-Z]+\z/,message: "only allows letters" }
  validates :gender, presence: true
  validates :age, presence: true, numericality: {greater_than_or_equal_to: 30, even: true }
  validates :address, presence: true, exclusion: { in: %w(delhi up mp),message: "%{value} is invalid ." }
  validates :terms_and_conditions, acceptance: { message: 'must be accepted' }
  validates :relocate, acceptance: { accept: ['yes','no'] }, presence: true
  validates :email, confirmation: true, presence: true, uniqueness: true
  validates :email_confirmation, presence: true
  validates :form_id, comparison: { greater_than_or_equal_to: 1000 }, presence:true , length: { minimum: 4, maximum:5 }, numericality: { only_integer: true }
  validates :identity, inclusion: { in: %w(aadhar_card pan_card driving_license),message: "%{value} is invalid"}
  validates :mobile, presence: true
end
