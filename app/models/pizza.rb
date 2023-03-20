class Pizza < ApplicationRecord
    has_many :restaurant_pizza
    has_many :restaurants, through: :restaurant_pizza
end
