class RatingsController < ApplicationController
  def create
    @rating = Rating.new( rating_params )
    if @rating.save
      redirect_to place_path( @rating.place_id )
    else
      # fail
    end
  end

  def update
    @rating = Rating.find( params[:id] )
    if @rating.update( rating_params )
      redirect_to place_path( @rating.place_id )
    else
      # fail
    end
  end

  def destroy
    @rating = Rating.find( params[:id] )
    if @rating.destroy

    else

    end

    redirect_to place_path( @rating.place_id )
  end

  private

  def rating_params
    params.require( :rating ).permit( :place_id, :user_id, :star_rating, :title, :review )
  end
end
