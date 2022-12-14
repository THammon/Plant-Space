class User < ApplicationRecord
    has_many :plants
    has_many :stores, through: :plants
    has_many :categories, through: :plants
    validates_presence_of :username, :password, :first_name, :last_name
    validates :username, length: { in: 0..15 } 
end
