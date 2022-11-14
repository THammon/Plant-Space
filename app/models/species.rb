class Species < ApplicationRecord
    has_many :plants
    has_many :users, through: :plants
    has_many :stores, through: :plants
end
