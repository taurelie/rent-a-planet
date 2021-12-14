class LocationsController < ApplicationController
  def show
  end

  def new
    @planet = Planet.find(params[planet_id])
    @user = User.find(params[user_id])
    @location = Location.new
  end

  def create
  end
end
