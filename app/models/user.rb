class User < ApplicationRecord
    has_many :plants
    has_many :stores, through: :plants
    has_many :categories, through: :plants
end
