class ProfilesController < ApplicationController

	def index
		add_breadcrumb "Home", users_path
		add_breadcrumb "Profile"
		@user = User.find_by_id(params[:user_id])
		# @profiles = @user.profiles
		@profile = Profile.find_by_user_id(params[:user_id])
	end

	def new
		add_breadcrumb "Home", users_path
		add_breadcrumb "Add New Profile"
		@user = User.find_by_id(params[:user_id])
		@profile = Profile.new
	end

	def create
		@user = User.find_by_id(params[:user_id])

		@profile = @user.profiles.new
		@profile.dob = params[:profile][:dob]
		@profile.pob = params[:profile][:pob]
		@profile.skills = params[:profile][:skills]
		@profile.favorite = params[:profile][:favorite]
		@profile.dream = params[:profile][:dream]
		@profile.current_job = params[:profile][:current_job]
		if @profile.save
			flash.notice = "Created profile successfully!"
			redirect_to users_path
		else 
			flash.alert = "Created was failed!"
			render :new
		end
		# redirect_to user_path(@profile.user)
	end

	def show
		
	end

	def edit
		@user = User.find_by_id(params[:user_id])
		@profile = Profile.find_by_id(params[:id])
		add_breadcrumb "Home", users_path
		add_breadcrumb "Edit Profile"
		# will return as array
		# @profile = @user.profiles
	end

	def update
		@user = User.find_by_id(params[:user_id])

		@profile = Profile.find_by_id(params[:id])
		@profile.dob = params[:profile][:dob]
		@profile.pob = params[:profile][:pob]
		@profile.skills = params[:profile][:skills]
		@profile.favorite = params[:profile][:favorite]
		@profile.dream = params[:profile][:dream]
		@profile.current_job = params[:profile][:current_job]
		if @profile.save
			flash.notice = "Updated profile successfully!"
			redirect_to user_profiles_path(@user)
		else 
			flash.alert = "Updated has been failed"
			render :edit
		end
	end

end
