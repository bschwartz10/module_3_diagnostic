class SearchController < ApplicationController

  def index
    require "pry"; binding.pry
    response = Faraday.get 'https://api.data.gov/nrel/alt-fuel-stations/v1/nearest.json?location=80203&limit=10&fuel_type=ELEC,LPG&api_key=qvRl6KmkkOFsu6eM5q8rClUc9jATQjMkDbdkZq57&format=JSON'
  end

end
