class Player < ApplicationRecord
  validates_presence_of :name
  has_many :records
  has_many :albums, through: :records
end
