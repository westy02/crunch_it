class Company < ActiveRecord::Base
  attr_accessible :address, :email, :ip, :latitude, :longitude, :name, :website
  has_many :users
  
  geocoded_by :address   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates

  reverse_geocoded_by :latitude, :longitude
  after_validation :reverse_geocode  # auto-fetch address
end