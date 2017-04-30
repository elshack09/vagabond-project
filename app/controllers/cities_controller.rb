class CitiesController < ApplicationController
  def index
    @cities = City.all
  end

  def show
    @city = City.find(params[:id])
    @posts = @city.posts
  end

  def posts
    @posts = City.find(params[:id]).posts
    @city = City.find(params[:id])
  end

end
