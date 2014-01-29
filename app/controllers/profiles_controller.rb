class ProfilesController < ApplicationController

	def index
		@user = User.find_by_id(params[:user_id])
		@profiles = @user.profiles
	end

	def new
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
		@profile.save
		redirect_to users_path
		# redirect_to user_path(@profile.user)
	end

	def show
		
	end

end
