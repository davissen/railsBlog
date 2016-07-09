class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
		User.create({
			name: params[:user][:name],
			email: params[:user][:email],
			password: params[:user][:email]
		})

		redirect_to "/users"

	end

	def sign
	@user = User.where(email: params[:email]).first
	end

	def signin
	@user = User.where(email: params[:email]).first
		if @user && @user.password == params[:password]
			session[:user_id] = @user.id
			flash[:notice] = "you are now signed in"
			redirect_to "/users"
		end
	end

end
