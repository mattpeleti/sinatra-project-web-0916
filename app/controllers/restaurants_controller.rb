class RestaurantsController < ApplicationController

  get "/restaurants" do
    @restaurants = Restaurant.all
    erb :'restaurants/index.html'
  end

  get "/restaurants/new" do
    erb :'restaurants/new.html'
  end

  post "/restaurants" do
    @restaurant = Restaurant.find_or_create_by(name: params[:restaurant][:name])
    redirect to "/restaurants/#{@restaurant.id}"
  end

  get "/restaurants/:id" do
    @restaurant = Restaurant.find(params[:id])
    erb :'restaurants/show.html'
  end


end