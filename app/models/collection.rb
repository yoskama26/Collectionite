class Collection < ApplicationRecord
  belongs_to :collector
  has_many :cards
end