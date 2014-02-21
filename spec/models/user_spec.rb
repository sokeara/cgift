require 'spec_helper'
<<<<<<< HEAD
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
:last_name => 'phan',
:email => 'phansaorin@gmail.com',
:username => 'phansaorin',
:password => 'saorinphan',
:phone_num => '087643246'
)
user.save.should == false
  end
  it "it should be require last name" do
  	user = User.new(
:first_name => 'saorin',
:last_name => '',
:email => 'phansaorin@gmail.com',
:username => 'phansaorin',
:password => 'saorinphan',
:phone_num => '087643246'
)
user.save.should == false
  end
 it "it should be accept only phone number with integer type" do
 user = User.new(
:first_name => 'saorin',
:last_name => 'saorin',
:email => 'phansaorin@gmail.com',
:username => 'phansaorin',
:password => 'saorinphan',
:phone_num => '08764324saorin'
)
user.save.should == false
  end
  it "it should not allow password less than 3 chareties" do
 user = User.new(
:first_name => 'saorin',
:last_name => 'saorin',
:email => 'phansaorin@gmail.com',
:username => 'phansaorin',
:password => 'sa',
:phone_num => '08764324saorin'
)
user.save.should == false
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
