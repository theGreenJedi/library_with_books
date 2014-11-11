
require 'active_record'

class Patron < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name,  presence: true

  has_many  :reviews

  has_and_belongs_to_many  :books


  has_many :ratings
  has_many :rated_books,
           through: :ratings,
           source:  :book

end
