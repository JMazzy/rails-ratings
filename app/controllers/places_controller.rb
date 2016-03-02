class PlacesController < ApplicationController
  def index
    @places = Place.all
  end

  def show
    @place = Place.find( params[:id] )
    @rating = Rating.new
    @ratings = Rating.all.where( place_id: @place.id )
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new( place_params )
    if @place.save
      redirect_to place_path( @place )
    else
      redirect_to new_place_path
    end
  end

  def edit
    @place = Place.find( params[:id] )
  end

  def update
    @place = Place.find( params[:id] )
    if @place.update( place_params )
      redirect_to place_path( @place )
    else
      redirect_to edit_place_path
    end
  end

  def destroy
    @place = Place.find( params[:id] )
    if @place.destroy
      redirect_to root_path
    else
      redirect_to place_path( @place )
    end
  end

  private

  def place_params
    params.require( :place ).permit( :name, :description, :street_address, :city, :state, :zip_code, :country, :phone_number )
  end
end
