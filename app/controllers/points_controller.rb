class PointsController < ApplicationController
	
	def index
		@route = Route.find params[:route_id]
		@points = @route.points.order(created_at: :asc)
		@hash = Gmaps4rails.build_markers(@points) do |point, marker|
  		marker.lat point.latitude
  		marker.lng point.longitude
		end
	end

	def new 
	@route = Route.find params[:route_id]
	@point = @route.points.new
	end

	def create
	@route = Route.find params[:route_id]
	@point = @route.points.new point_params 

		if @point.save
			flash[:notice] = "Point created successfully"
			redirect_to route_points_path(@route)
		else
			flash[:alert] = "Point not created"
			render 'new'
		end
	end

private
	def point_params
		params.require(:point).permit(:point_name, :point_description, :point_date, :route_id, :point_comments, :point_photo, :address, :latitude, :longitude)
	end



end
