class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  # def show
  #   @restaurant = Restaurant.find_by_id(params[:id])
  # end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(params[:restaurant])

    if @restaurant.save
      redirect_to restaurants_path
    else
      render :new
    end
  end
end
