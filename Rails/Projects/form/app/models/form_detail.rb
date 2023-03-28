class FormDetail < ApplicationRecord
  class NameValidator < ActiveModel::Validator     #create validation
    def validate(record)
      if record.name == "neeraj"
        record.errors.add :name, "can't be neeraj"
      end
    end
  end

  validates_each :email do |record, attribute, value|          # validating email
    unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      record.errors.add(attribute, "is not correct or valid")
    end
  end

  validates_each :name do |record, attr, value|   #check for name start with capital letter.
    record.errors.add(attr, 'must start with upper case') if value =~ /\A[[:lower:]]/
  end

  validate :salary_can_not_be_less_than_10000
  validates_with NameValidator     #calling created validation
  validates :name, presence: { message: "must be given please" }, format: { with: /\A[a-zA-Z]+\z/,message: "only allows letters" }
  validates :gender, presence: { message: "must be given please" }
  validates :age, presence: true, numericality: {greater_than_or_equal_to: 30, even: true }
  validates :address, presence: true, exclusion: { in: %w(delhi up mp),message: "%{value} is invalid ." }
  validates :terms_and_conditions, acceptance: { message: 'must be accepted' } 
  validates :relocate, acceptance: { accept: ['yes','no'] }, presence: true
  validates :email, confirmation: true, presence: true, uniqueness: true, on: :create
  validates :email_confirmation, presence: true
  validates :form_id, comparison: { greater_than_or_equal_to: 1000 }, presence:true , length: { minimum: 4, maximum:5 }, numericality: { only_integer: true }
  validates :identity, inclusion: { in: %w(aadhar_card pan_card driving_license),message: "%{value} is invalid"},  allow_blank: true
  validates :mobile, presence: true
  validates :salary, presence: true
  validates :payment_type, presence: true, inclusion: { in: %w(card upi net_banking),message: "%{value} is invalid"}
  validates :password, confirmation: true, unless: Proc.new { |a| a.password.blank? }
  validates :confirm_password, presence: true

  #if payment type is card then card number required
  validates :card_number, presence: true, if: :paid_with_card?  

  def paid_with_card?
    payment_type == "card"
  end

  #if card is present then this validation must be satisfied.
  with_options if: :paid_with_card? do |a|
    a.validates :card_number, length: { minimum: 10 }
    a.validates :salary, presence: true
  end

  def salary_can_not_be_less_than_10000     #Custom Methods for salary validation
    if salary < 10000
      errors.add(:salary, "can't be less than 10000")
    end
  end

  #callbacks

  #before validation
  def normalize_name     
    self.name = name.downcase.titleize
  end

  before_validation :normalize_name

  #after validation
  def print_message
    puts "validation checked"
  end

  after_validation :print_message

  #before save
  def length_check
    if self.mobile.split('').length != 10
      self.mobile = "1234567890"
    end
  end

  before_save :length_check

  #around save
  def around_save_check
    puts "# perform actions before save"
    yield # save the object
    puts "# perform actions after save"
  end

  around_save :around_save_check


end
