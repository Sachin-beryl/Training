class Record < ApplicationRecord
  belongs_to :book_record
  default_scope { where(borrowed: true) }
end
