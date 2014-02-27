require 'spec_helper'

describe Profile do
	
	it "Should not blink for form submit" do
		profile = Profile.new()
		profile.save.should == false
	end

	it "Should require date of birth" do 
		profile = Profile.create!(
			:dob => "12/01/1991",
			:pob => "Takeo Province",
			:current_job => "Developer"
			)
		Profile.count.should == 1
	end

	it "Should not blank for place of birth" do
		profile = Profile.create!(
			:dob => "15/05/1993",
			:pob => "Kompong thom",
			:skills =>"web",
			:favorite => "fighting",
			:dream => "famouse person",
			:current_job => "IT consulting",
			)
		Profile.count.should == 1
	end
	it "Should require for skills" do
		profile = Profile.create!(
			:dob => "15/05/1993",
			:pob => "Kompong thom",
			:skills =>"web",
			:favorite => "fighting",
			:dream => "famouse person",
			:current_job => "IT consulting",
			)
		Profile.count.should == 1
	end
	


end
