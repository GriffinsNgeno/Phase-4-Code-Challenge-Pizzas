class RestaurantsController < ApplicationController
    # wrap_parameters format []
    

    # GET /restaurants/
    def index
        render json: Restaurant.all
    end

    # GET /restaurants/:id
    def show
        restaurants = restaurant_params
        if restaurants
        render json: restaurants
        else
            render_not_found_response
        end
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
