class PostsController < ApplicationController
	def index
		@post = Post.all
	end

	def new
		@post = Post.new
	end

	def create
		Post.create({
			post: params[:post][:post],
			user_id: session[:user_id]
		})

		redirect_to "/posts"

	end
end
