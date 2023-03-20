class RestaurantPizzasController < ApplicationController

    def index
        render json: RestaurantPizza.all
    end
    def create
        
    end
end
