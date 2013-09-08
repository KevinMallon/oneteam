class Location < ActiveRecord::Base
  attr_accessible :location_name, :latitude, :longitude

  has_many :employees
  has_many :requests
end
