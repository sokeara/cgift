class ProfilesController < ApplicationController

	def create
		@profile = Profile.new
	end

end
