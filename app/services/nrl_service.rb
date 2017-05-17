class NrlService

def self.search_by_zipcode(zipcode)
  response = Faraday.get "https://api.data.gov/nrel/alt-fuel-stations/v1/nearest.json?location=#{zipcode}&limit=10&fuel_type=ELEC,LPG&api_key=#{ENV["nrel_api_key"]}&format=JSON"
  body = JSON.parse(response.body, :symbolize_names => true)
  fuel_stations = body["fuel_stations"]
end



end
