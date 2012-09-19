class Company < ActiveRecord::Base
  attr_accessible :address, :email, :ip, :latitude, :longitude, :name, :website
  has_many :users
end
