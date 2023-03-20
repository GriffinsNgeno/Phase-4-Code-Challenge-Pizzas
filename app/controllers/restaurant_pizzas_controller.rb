class RestaurantPizzasController < ApplicationController

    # GET /restaurant_pizzas/
    def index
        render json: RestaurantPizza.all
    end

    # POST /restaurant_pizzas/
    def create

    end
end
