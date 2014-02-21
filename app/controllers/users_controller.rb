class UsersController < ApplicationController

	def index
		@users = User.all
		add_breadcrumb "Home", users_path
	end

	def new
		@user = User.new
		add_breadcrumb "Home", users_path
		add_breadcrumb "Add new"
	end

	def create

		# @user = User.create(user_params)
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
		@user.avatar = params[:user][:avatar]
		@user.img_item = params[:user][:name_item]
		
		if @user.save
			flash.notice = "#{@user.username} has been created successfully!"
			redirect_to users_path
		else
			flash.alert = "Save failed! Please fill all of the input fields!"
			render :new
		end
	end

	def edit
		@user = User.find_by_id(params[:id])
		add_breadcrumb "Home", users_path
		add_breadcrumb "Edit User"
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
		if @user.avatar
			# For delete image when update
			@user.avatar = nil
			# For add new image just update
			@user.avatar = params[:user][:avatar]
		end
		if @user.save
			redirect_to users_path
			flash.notice = "#{@user.username} has been updated!"
		else 
			render :edit
			flash.alert = "Update failed! Please try again!"
		end
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

	private

	# Use strong_parameters for attribute whitelisting
	# Be sure to update your create() and update() controller methods.

	def user_params
	  params.require(:user).permit(:avatar)
	end

end
