
require 'active_record'

class Rating < ActiveRecord::Base
  belongs_to :patron
  belongs_to :book
end

