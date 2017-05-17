class NriApi

def initialize(attrs = {})
  @attrs = attrs
end

def self.find_by_zipcode(zipcode)
  NrlService.search_by_zipcode(zipcode).map do |station|
    new(station)
  end
end

end
