
require 'active_record'

class Rating < ActiveRecord::Base
  belongs_to  :book
  belongs_to  :patron


  validates   :stars,
              presence: true,
              numericality: {only_integer: true}
end
