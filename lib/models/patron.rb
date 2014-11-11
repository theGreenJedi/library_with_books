
require 'active_record'

class Patron < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name,  presence: true

  has_many  :reviews
end
