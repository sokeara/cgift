class Profile < ActiveRecord::Base
	belongs_to :person

	validates :dob, :current_job, presence: true

end
