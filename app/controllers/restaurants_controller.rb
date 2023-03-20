class RestaurantsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    # GET /restaurants/
    def index
        render json: Restaurant.all
    end

    # GET /restaurants/:id
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

    def render_not_found_response
        render json: { error: "Restaurant not found" }, status: :not_found
      end
    
    
end
