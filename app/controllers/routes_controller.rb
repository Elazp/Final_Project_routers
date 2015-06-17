class RoutesController < ApplicationController
  


def home
	@last_routes = Route.last_routes(4)
end

def index
	@last_routes = Route.last_routes(20)
end

def show
	@route = Route.find params[:id]	
end

def new
	@route = Route.new
end

def create
		@route = Route.new route_params
		 if @route.save
			redirect_to @route
		else
			render 'new'
		end
	end


def destroy
	route = Route.find params[:id]
	route.destroy
	redirect_to routes_path
end

 def search
   @last_routes = Route.search params[:route_country]
   render 'index'
   
 end


private 
	def route_params
		params.require(:route).permit(:route_name, :route_country, :route_description, :route_date, :user_name, :route_comments, :route_photo)
	end

end
