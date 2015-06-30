class Route < ActiveRecord::Base
	has_many :points
	has_many :comments
	attr_accessible :route_name, :route_description, :route_initial_date, :route_end_date, :route_country, :route_photo
	

	def self.last_routes(param)
		Route.order(route_initial_date: :desc).limit param
	end

	def self.search route_country
    Route.where("route_country LIKE '%" + route_country.to_s  + "%' OR route_name LIKE '%" + route_country.to_s + "%'")
	end

end
