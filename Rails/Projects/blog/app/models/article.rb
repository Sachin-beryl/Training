class Article < ApplicationRecord
  include Visible

  has_many :comments, dependent: :destroy   #article associated comments will also need to be deleted.

  validates :title, presence: true   
  validates :body, presence: true, length: { minimum: 10 } 
end
