class CommentsController < ApplicationController
	def index
		@comment = Comment.all
	end

	def new
		@comment = Comment.new
	end

	def create
		Commment.create({
			comment: params[:comment][:comment],
		})

		redirect_to "/posts"

	end
end
