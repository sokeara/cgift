class PeopleController < ApplicationController

	def index
		@persons = Person.all
		add_breadcrumb "Home", persons_path
	end

	def new
		@person = Person.new
		add_breadcrumb "Home", persons_path
		add_breadcrumb "Add new"
	end

	def create
		@person = Person.new
		@person.first_name = params[:person][:first_name]
		@person.last_name = params[:person][:last_name]
		@person.gender = params[:person][:gender]
		@person.personname = params[:person][:personname]
		@person.password = params[:person][:password]
		@person.email = params[:person][:email]
		@person.phone_num = params[:person][:phone_num]
		@person.address = params[:person][:address]
		@person.avatar = params[:person][:avatar]
		
		if @person.save
			flash.notice = "#{@person.personname} has been created successfully!"
			redirect_to persons_path
		else
			flash.alert = "Save failed! Please fill all of the input fields!"
			render :new
		end
	end

	def edit
		@person = person.find_by_id(params[:id])
		add_breadcrumb "Home", persons_path
		add_breadcrumb "Edit person"
	end

	def update
		@person = Person.find_by_id(params[:id])
		@person.first_name = params[:person][:first_name]
		@person.last_name = params[:person][:last_name]
		@person.gender = params[:person][:gender]
		@person.personname = params[:person][:personname]
		@person.password = params[:person][:password]
		@person.email = params[:person][:email]
		@person.phone_num = params[:person][:phone_num]
		@person.address = params[:person][:address]
		if @person.avatar
			# For delete image when update
			@person.avatar = nil
			# For add new image just update
			@person.avatar = params[:person][:avatar]
		end
		if @person.save
			redirect_to persons_path
			flash.notice = "#{@person.personname} has been updated!"
		else 
			render :edit
			flash.alert = "Update failed! Please try again!"
		end
	end

	def destroy
		@person = person.find_by_id(params[:id])
		@person.destroy
		redirect_to persons_path
		flash.notice = "#{@person.personname} has been deleted!"
	end

	def show
		@person = person.find_by_id(params[:id])
		@profile = Profile.new
	end

	private

	# Use strong_parameters for attribute whitelisting
	# Be sure to update your create() and update() controller methods.

	def person_params
	  params.require(:person).permit(:avatar)
	end

end
