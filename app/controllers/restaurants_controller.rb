class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(review_params)
    if @restaurant.save
      redirect_to show_path(@restaurant)
    else
      render 'new'
    end
  end

  private

  def review_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
