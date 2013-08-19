class Location < ActiveRecord::Base
  attr_accessible :location_name

  has_many :employees
  has_many :requests
end
