
require 'active_record'

class Patron < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name,  presence: true

  has_many  :checkouts,
            class_name:  "Book",
            foreign_key: :borrower_id

end
