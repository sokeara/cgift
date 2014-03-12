class ProfilesController < ApplicationController

	def index
		add_breadcrumb "Home", people_path
		add_breadcrumb "Profile"
		@person = Person.find_by_id(params[:person_id])
		# @profiles = @user.profiles
		@profile = Profile.find_by_person_id(params[:person_id])
	end

	def new
		add_breadcrumb "Home", people_path
		add_breadcrumb "Add New Profile"
		@person = Person.find_by_id(params[:person_id])
		@profile = Profile.new
	end

	def create
		@person = Person.find_by_id(params[:person_id])

		@profile = @person.profiles.new
		@profile.dob = params[:profile][:dob]
		@profile.pob = params[:profile][:pob]
		@profile.skills = params[:profile][:skills]
		@profile.favorite = params[:profile][:favorite]
		@profile.dream = params[:profile][:dream]
		@profile.current_job = params[:profile][:current_job]
		if @profile.save
			flash.notice = "Created profile successfully!"
			redirect_to people_path
		else 
			flash.alert = "Created was failed!"
			render :new
		end
		# redirect_to user_path(@profile.user)
	end

	def show
		
	end

	def edit
		@person = Person.find_by_id(params[:person_id])
		@profile = Profile.find_by_id(params[:id])
		add_breadcrumb "Home", people_path
		add_breadcrumb "Edit Profile"
		# will return as array
		# @profile = @user.profiles
	end

	def update
		@person = Person.find_by_id(params[:person_id])

		@profile = Profile.find_by_id(params[:id])
		@profile.dob = params[:profile][:dob]
		@profile.pob = params[:profile][:pob]
		@profile.skills = params[:profile][:skills]
		@profile.favorite = params[:profile][:favorite]
		@profile.dream = params[:profile][:dream]
		@profile.current_job = params[:profile][:current_job]
		if @profile.save
			flash.notice = "Updated profile successfully!"
			redirect_to person_profiles_path(@person)
		else 
			flash.alert = "Updated has been failed"
			render :edit
		end
	end

end
