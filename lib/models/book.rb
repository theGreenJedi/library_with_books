
require 'active_record'

class Book < ActiveRecord::Base
  validates :title,
            presence: true

  validates :publication_date,
            numericality: {only_integer: true}


  belongs_to :author

  has_and_belongs_to_many   :patrons
  has_and_belongs_to_many   :genres

  has_many   :reviews

  has_many   :ratings
  has_many   :raters,   # A patron who has rated the book
            through: :ratings,
            source:  :patron
end
