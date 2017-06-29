class PlacesController < ApplicationController

  before_action :authenticate_user!
  
  def index
    @place = Place.all 
  end

  def new
  end

  def create
    @place = Place.new(place_params)
    if @place.valid?
      @place.save
    else
      render action: 'new'
    end
    redirect_to places_path
  end 

  def show
    @place = Place.find(params[:id])
  end 

  def place_params
    params.require(:place).permit(:name, :city, :street, :bldg, :description, :tags)
  end


end
