class Point < ActiveRecord::Base
	belongs_to :route
	attr_accessible :address, :latitude, :longitude, :point_name, :point_date, :point_photo, :point_description 
	geocoded_by :address
	after_validation :geocode
	
	

end
