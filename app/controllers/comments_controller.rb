class CommentsController < ApplicationController
	def index
		@route = Route.find params[:route_id]
		@comments = @route.comments.order(updated_at: :asc)
	end

	def new 
	@route = Route.find params[:route_id]
	@comment = @route.comments.new
	end

	def create
	@route = Route.find params[:route_id]
	@comment = @route.comments.new comment_params 

	if @comment.save
		flash[:notice] = "Comment created successfully"
		redirect_to route_comments_path(@route)
	else
		flash[:alert] = "Comment not created"
		render 'new'
	end
end

private
	def comment_params
		params.require(:comment).permit(:route_id, :list_comment, :user_name)
	end




end