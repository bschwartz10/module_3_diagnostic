class SearchController < ApplicationController

  def index
    zipcode = params[:q]
    response = Faraday.get "https://api.data.gov/nrel/alt-fuel-stations/v1/nearest.json?location=#{zipcode}&limit=10&fuel_type=ELEC,LPG&api_key=qvRl6KmkkOFsu6eM5q8rClUc9jATQjMkDbdkZq57&format=JSON"
    body = JSON.parse(response.body)
    @fuel_stations = body["fuel_stations"]
  end

end
