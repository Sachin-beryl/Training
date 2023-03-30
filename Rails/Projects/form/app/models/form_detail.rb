class FormNameCallbacks          #class callback
  def before_validation(f)
    if f.name.nil?
      f.name = "Untitled Form"
    end
  end
end

class FormDetail < ApplicationRecord
  before_validation FormNameCallbacks.new

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
  # validates :name, presence: { message: "must be given please" }, format: { with: /\A[a-zA-Z]+\z/,message: "only allows letters" }
  validates :gender, presence: { message: "must be given please" }
  validates :age, presence: true, numericality: {greater_than_or_equal_to: 20}
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

  # ---------------------------------------callbacks------------------------------------------

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

  # before create
  def before_create_check
    self.before_save = "before_create"
    puts "==========================before create is created============================= "
  end

  before_create :before_create_check

  #after create
  def after_create_check
    puts "========================after create is created================================="
  end

  after_create :after_create_check

  #around create
  def around_create_check
    self.before_save = "around_create"
    puts "========================use around create before create happen====================="
    yield
    puts "========================use around create after create happen====================="
    self.after_save = "around_create"
  end

  around_create :around_create_check

  #after save
  def after_save_check
    puts "================================after save check================================"
  end

  after_save :after_save_check

  #after commit 
  def after_commit_check
    puts "================================after commit check================================"
  end

  after_commit :after_commit_check

  #before update
  def before_update_check
    # self.before_save = "before update"
    puts "=================print before update================================"
  end

  before_update :before_update_check

  #after update
  def after_update_check
    # self.after_save = "after update"
    puts "=====================print after update================================"
  end

  after_update :after_update_check

  #before destroy
  before_destroy :can_destroy?

  def can_destroy?
    if self.form_id > 1007 
      self.errors.add(:base, "Can't be destroy because form id greater than 1003")
      throw :abort
    end
  end

  #after destroy
  after_destroy :comment

  def comment
    puts "after destroy successful"
  end

  #around destroy
  around_destroy :comment_around

  def comment_around
    puts "comment for around destroy before"
    yield
    puts "comment for around destroy after"
  end

  #after initialize
  after_initialize do |form_detail|
    puts "==================You have initialized an object!======================"
  end

  #after find
  after_find do |form_detail|
    puts "==================You have found an object!============================"
  end

  #after touch
  after_touch do |user|
    puts "================You have touched an object======================"
  end

  #Conditional Callbacks
  before_save :normalize_card_length, if: [:paid_with_card?, :salary_present?]
  # before_save :normalize_card_length, if: Proc.new { |f| f.paid_with_card? }

  def normalize_card_length
    if self.card_number.split('').length != 10
      self.card_number = "0000000000"
    end
  end

  def salary_present?
    if self.salary
      return true
    end
  end

end
