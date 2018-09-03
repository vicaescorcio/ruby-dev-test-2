class Album < ApplicationRecord
  has_many :records
  has_many :players, through: :records
  validates_presence_of :name
end
