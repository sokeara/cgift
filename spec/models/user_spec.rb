require 'spec_helper'
describe User do
		# before(:each) do
			
		# end
		it "should be new user" do
			user1 = User.create!(
				:first_name => "sokry",
				:last_name => "sat",
				:gender =>"f",
				:username =>"satsokry",
				:password =>"1234567890",
				:email => "sokry.sat@gmail.com",
				:phone_num => "0967413957",
				:address => "kompong thom",
				:avatar => "",

				)
			User.count.should == 1 
		end
		it "should not save duplicate user" do
			user2 = User.create!(
				:first_name => "sokry",
				:last_name => "sat",
				:gender =>"f",
				:username =>"satsokry",
				:password =>"1234567890",
				:email => "sokry.sat@gmail.com",
				:phone_num => "0967413957",
				:address => "kompong thom",
				:avatar => "",

				)
			user3 = User.create!(
				:first_name => "sokry",
				:last_name => "sat",
				:gender =>"f",
				:username =>"satsokry",
				:password =>"1234567890",
				:email => "viriyasamphor.sat@gmail.com",
				:phone_num => "0967413957",
				:address => "kompong thom",
				:avatar => "",

				)
			User.count.should == 2
		end
		it "should require firstname" do
			user4 = User.create!(
				:first_name => "chakriya",
				:last_name => "sat",
				:gender =>"f",
				:username =>"satsokry",
				:password =>"1234567890",
				:email => "sokry.sat@gmail.com",
				:phone_num => "0967413957",
				:address => "kompong thom",
				:avatar => "",

				)
			User.count.should == 1
		end
		it "should require lastname" do
			user4 = User.create!(
				:first_name => "chakriya",
				:last_name => "sat",
				:gender =>"f",
				:username =>"satsokry",
				:password =>"1234567890",
				:email => "sokry.sat@gmail.com",
				:phone_num => "0967413957",
				:address => "kompong thom",
				:avatar => "",

				)
			User.count.should == 1
		end
		it "should accept only phone number with integer type" do
			user4 = User.create!(
				:first_name => "chakriya",
				:last_name => "sat",
				:gender =>"f",
				:username =>"satsokry",
				:password =>"1234567890",
				:email => "sokry.sat@gmail.com",
				:phone_num => "0977878899",
				:address => "kompong thom",
				:avatar => "",

				)
			User.count.should == 1
		end
		it "should not allowed password less then 3 character" do
			user4 = User.create!(
				:first_name => "chakriya",
				:last_name => "sat",
				:gender =>"f",
				:username =>"satsokry",
				:password =>"1234567",
				:email => "sokry.sat@gmail.com",
				:phone_num => "0977878899",
				:address => "kompong thom",
				:avatar => "",

				)
			User.count.should == 1
		end
		it "test" do
		    user = User.new(
				:first_name => "chakriya",
				:last_name => "sat",
				:gender =>"f",
				:username =>"satsokry",
				:password =>"1234567",
				:email => "sokry.sat@gmail.com",
				:phone_num => "0977878899",
				:address => "kompong thom",
				:avatar => "",
		    	)
		    user.save.should == true
		end
end
