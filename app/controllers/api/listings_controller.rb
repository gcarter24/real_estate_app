class Api::ListingsController < ApplicationController
  def create
    address = "Space Needle"
    #@coordinates = Geocoder.coordinates(address: params[:address])
    @coordinates = Geocoder.coordinates(address)

    render "show.json.jb"
  end
end
