
require 'active_record'

class Author < ActiveRecord::Base
  validates :name, presence: true

  validates(:birth_year, {
    presence: true,
    numericality: {only_integer: true}
  })


  has_many :books

end
