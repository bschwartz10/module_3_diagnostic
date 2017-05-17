class NrlApi
  attr_reader :attrs, :station_name, :street_address, :fuel_type_code, :distance, :access_days_time

def initialize(attrs = {})
  @attrs = attrs
  @station_name = attrs[:station_name]
  @street_address = attrs[:street_address]
  @fuel_type = attrs[:fuel_type_code]
  @distance = attrs[:distance]
  @access_days_time = attrs[:access_days_time]

end

def self.find_by_zipcode(zipcode)
  NrlService.search_by_zipcode(zipcode).map do |station|
    new(station)
  end
end

end
