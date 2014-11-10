
require 'active_record'

class Book < ActiveRecord::Base
  validates :title,
            presence: true

  validates :publication_date,
            numericality: {only_integer: true}


  belongs_to  :borrower,
              class_name: "Patron",
              inverse_of: :checkouts


  has_many    :ratings

end
