class Comment < ActiveRecord::Base
	belongs_to :route
	attr_accessible :list_comment, :user_name
end
