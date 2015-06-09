class Route < ActiveRecord::Base
	has_many :points
	attr_accessible :route_name, :route_description, :route_date, :route_country, :route_photo
	

	def self.last_routes(param)
		Route.order(route_date: :desc).limit param
	end

	def self.search route_country
    Route.where("route_country LIKE '%" + route_country.to_s  + "%'")
	end

end
