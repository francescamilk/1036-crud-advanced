class RestaurantsController < ApplicationController
  # before_action :set_restaurant, only: [ :show, :edit, :update, :destroy ]

  # get 'localhost/restaurants'
  def index
    @restaurants = Restaurant.all
  end

  # get 'localhost/restaurants/top'
  def top
    @restaurants = Restaurant.where(rating: 5)
  end

  # get 'localhost/restaurants/:id'
  def show
    @restaurant = Restaurant.find(params[:id])
  end

  # get 'localhost/restaurants/new'
  def new
    @restaurant = Restaurant.new
  end

  # post 'localhost/restaurants'
  def create
    @restaurant = Restaurant.new(restaurant_params)
    redirect_to restaurant_path(@restaurant) if @restaurant.save
  end

  # get 'localhost/restaurants/:id/edit'
  def edit 
    @restaurant = Restaurant.find(params[:id])
  end

  # patch 'localhost/restaurants/:id'
  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant)
  end

  # delete 'localhost/restaurants/:id'
  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to restaurants_path, status: :see_other
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :rating)
  end

  # def set_restaurant
  #   @restaurant = Restaurant.find(params[:id])
  # end
end
