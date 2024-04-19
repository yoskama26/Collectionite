class Card < ApplicationRecord
    has_many :collections
    has_and_belongs_to_many :categories
end