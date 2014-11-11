
require 'active_record'

class Genre < ActiveRecord::Base
  validates :name, presence: true
end
