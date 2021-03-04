class Api::ListingsController < ApplicationController
  def create
    @results = Geocoder.search(params[:address])
    @listing = Listing.new(
      description: params[:description],
      square_feet: params[:square_feet],
      bedrooms: params[:bedrooms],
      bathrooms: params[:bathrooms],
      floors: params[:floors],
      availability: params[:availability],
      price: params[:price],
      address: params[:address],
      latitude: params[:latitude],
      longitude: params[:longitude],
    )
    @listing.save
    render "show.json.jb"
  end
end
