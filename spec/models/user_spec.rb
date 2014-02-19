require 'spec_helper'
<<<<<<< HEAD
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
=======

describe User do
	before(:each) do
		@attributes = {
			:first_name => "Ranut",
			:last_name => "Han",
			:email => "ranut.han@gmail.com",
			:username => "ranut.han",
			:password => "12345",
			:phone_num => "0972792217"
		}
	end

	it "Should create new user" do
		user1 = User.create!(@attributes)
		user2 = User.create!(
			:first_name => "foo",
			:last_name => "bar",
			:email => "phanhathan@gmail.com",
			:username => "foo.bar",
			:password => 12345,
			:phone_num => "09771234234"
			)
		User.count.should == 2
	end

	it "Should require first name" do
		user = User.create!(
			:first_name => "saorin",
			:last_name => "phan",
			:email => "saorin@gmail.com",
			:username => "saorin.phan",
			:password => "12345",
			:phone_num => "0978787789"
			)
		User.count.should == 1
	end

	it "Should require last name" do
		user = User.create!(
			:first_name => "reasmie",
			:last_name => "run",
			:email => "reasmie.run@gmail.com",
			:username => "reasmie.run",
			:password => "12345",
			:phone_num => "0978789897"
			)
		User.count.should == 1
	end

	it "Should accept only phone number with integer type" do
		user = User.create!(
			:first_name => "chenda",
			:last_name => "pok",
			:email => "chenda.pok@gmail.com",
			:username => "chenda.pok",
			:password => "123455",
			:phone_num => "0972323453"
			)
		User.count.should == 1
	end

	it "Should not allowed password less than 3 character" do
		user = User.create!(
			:first_name => "chenda",
			:last_name => "pok",
			:email => "chenda.pok@gmail.com",
			:username => "chenda.pok",
			:password => "12345",
			:phone_num => "0972323453"
			)
		User.count.should == 1
	end

	it "Should not save if no data or just instance new" do
		user = User.new()
		user.save.should == false
	end

end
>>>>>>> dc1c3020927e8925ce0c04037ca21a911cef9235
