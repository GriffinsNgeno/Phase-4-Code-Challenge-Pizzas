class RestaurantsController < ApplicationController

    def index
        render json: Restaurant.all
    end

    def show
        restaurants = restaurant_params
        render json: restaurants
    end

    def destroy
        restaurant = restaurant_params
        restaurant.destroy
        head :no_content
    end

    private

    def restaurant_params
        Restaurant.find_by(id: params[:id])
    end
end
