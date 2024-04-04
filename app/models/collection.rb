class Collection < ApplicationRecord
  belongs_to :collector
  has_and_belongs_to_many :cards

end
