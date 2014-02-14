require 'spec_helper'
describe User do 
	before(:each) do
		@attributes = {
			:first_name => 'First Name',
			:last_name => 'Last Name',
			:email => 'Email',
			:username => 'Username',
			:password => 'Password',
			:phone_num => 'Phone Number'
		}
	end
	it "should create new suer" do
		user = User.create!(
			:first_name => 'sokeara',
			:last_name => 'sim',
			:email => 'sim.sokeara@gmail.com',
			:username => 'sokeara.sim',
			:password => 'sokeara',
			:phone_num => '0889001569'
		)
		User.count.should == 1
	end

	it "should not save duplicate user" do
		user1 = User.create!(
			:first_name => 'sokeara',
			:last_name => 'sim',
			:email => 'sim.sokeara@gmail.com',
			:username => 'sokeara.sim',
			:password => 'sokeara',
			:phone_num => '0889001569'
		)

		user2 = User.create!(
			:first_name => 'sokeara',
			:last_name => 'sim',
			:email => 'sim.sokeara2@gmail.com',
			:username => 'sokeara.sim',
			:password => 'sokeara',
			:phone_num => '0889001569'
		)

		User.count.should == 2
	end

	it "should required first name" do
		user = User.new(
			:first_name => '',
			:last_name => 'sim',
			:email => 'sim.sokeara2@gmail.com',
			:username => 'sokeara.sim',
			:password => 'sokeara',
			:phone_num => '0889001569'
		)
		user.save.should == false
	end

	it "should required last name" do
		user = User.new(
			:first_name => 'sokeara',
			:last_name => '',
			:email => 'sim.sokeara2@gmail.com',
			:username => 'sokeara.sim',
			:password => 'sokeara',
			:phone_num => '0889001569'
		)
		user.save.should == false
	end

	it "should required phone number which is number" do
		user = User.new(
			:first_name => 'sokeara',
			:last_name => 'sim',
			:email => 'sim.sokeara2@gmail.com',
			:username => 'sokeara.sim',
			:password => 'sokeara',
			:phone_num => '0889001569'
		)
		user.save.should == true
	end

	it "should not allowed password less than 3 character" do
		user = User.new(
			:first_name => 'sokeara',
			:last_name => 'sim',
			:email => 'sim.sokeara2@gmail.com',
			:username => 'sokeara.sim',
			:password => '12345',
			:phone_num => 'reaksmey'
		)
		user.save.should == false
	end
end