class SearchController < ApplicationController

  def index
    zipcode = params[:q]
    api_key = ENV["nrel_api_key"]
    response = Faraday.get "https://api.data.gov/nrel/alt-fuel-stations/v1/nearest.json?location=#{zipcode}&limit=10&fuel_type=ELEC,LPG&api_key=#{api_key}&format=JSON"
    body = JSON.parse(response.body)
    @fuel_stations = body["fuel_stations"]
  end

end
