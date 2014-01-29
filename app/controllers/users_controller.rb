class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new

		@user.user_id = params[:user][:user_id]
		@user.first_name = params[:user][:first_name]
		@user.last_name = params[:user][:last_name]
		@user.gender = params[:user][:gender]
		@user.username = params[:user][:username]
		@user.password = params[:user][:password]
		@user.email = params[:user][:email]
		@user.phone_num = params[:user][:phone_num]
		@user.address = params[:user][:address]
		@user.save
		redirect_to users_path
		flash.notice = "#{@user.username} has been created successfully!"
	end

	def edit
		@user = User.find_by_id(params[:id])
	end

	def update
		@user = User.find_by_id(params[:id])

		@user.user_id = params[:user][:user_id]
		@user.first_name = params[:user][:first_name]
		@user.last_name = params[:user][:last_name]
		@user.gender = params[:user][:gender]
		@user.username = params[:user][:username]
		@user.password = params[:user][:password]
		@user.email = params[:user][:email]
		@user.phone_num = params[:user][:phone_num]
		@user.address = params[:user][:address]
		@user.save
		redirect_to users_path
		flash.notice = "#{@user.username} has been updated!"
	end

	def destroy
		@user = User.find_by_id(params[:id])
		@user.destroy
		redirect_to users_path
		flash.notice = "#{@user.username} has been deleted!"
	end

	def show
		@user = User.find_by_id(params[:id])
		@profile = Profile.new
	end

end
