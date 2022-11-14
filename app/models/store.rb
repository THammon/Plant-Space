class Store < ApplicationRecord
    has_many :plants
    has_many :users, through: :plants
    has_many :categories, through: :plants
end
