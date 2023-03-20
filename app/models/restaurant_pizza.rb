class RestaurantPizza < ApplicationRecord
    belongs_to :pizza
    belongs_to :restaurant

    # `price` between 1 and 30
    validates :price, numericality: { greater_than: 0, less_than: 31 }

end
