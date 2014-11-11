
require 'active_record'

class Review < ActiveRecord::Base

  validates :comment, presence: true

  belongs_to :patron
  belongs_to :book

end
