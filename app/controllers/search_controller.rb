class SearchController < ApplicationController

  def index
    @fuel_stations = NrlApi.find_by_zipcode(params[:q])
  end

end
