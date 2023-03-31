class Author < ApplicationRecord
  belongs_to :book

  #polymorphic
  has_many :feedbacks, as: :feedbackable
end
