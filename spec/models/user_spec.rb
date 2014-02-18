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

