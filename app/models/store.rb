class Store < ApplicationRecord
    has_many :plants
    has_many :users, through: :plants
    has_many :species, through: :plants
end
