class Record < ApplicationRecord
  belongs_to :player
  belongs_to :album
end
