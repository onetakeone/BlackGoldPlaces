class PlacesController < ApplicationController
  def new
  end
  def create
    @place = Place.new(place_params)
    if @place.valid?
      @place.save
    else
      render action: 'new'
    end
    redirect_to home_index_path
  end  

  def place_params
    params.require(:place).permit(:name, :city, :street, :bldg, :description, :tags)
  end


end
