class PlanetsController < ApplicationController

  before_action :set_planet, only: %i[ show edit update destroy ]
  skip_before_action :authenticate_user!, only: [:index, :show]

  # GET /planets or /planets.json
  def index
    @planets = Planet.all
  end

  # GET /planets/1 or /planets/1.json
  def show
  end

  # GET /planets/new
  def new
    @planet = Planet.new
  end

  # POST /planets or /planets.json
  def create
    @planet = Planet.new(planet_params)
    @planet.user = current_user
    if @planet.save
      redirect_to dashboard_path(@planet)
    else
      render :new
    end
  end

  def edit
    @planet = Planet.find(params[:id])
  end

  def update
    @planet = Planet.find(params[:id])
    @planet.update(planet_params)
    redirect_to planet_path(@planet)
  end

  def destroy
    @planet.destroy
    redirect_to dashboard_path
  end

  private

    # Use callbacks to share common setup or constraints between actions.
  def set_planet
    @planet = Planet.find(params[:id])
  end

    # Only allow a list of trusted parameters through.
  def planet_params
      params.require(:planet).permit( :name, :safety, :description, :planet_type, :prix, :localisation)
  end
end
