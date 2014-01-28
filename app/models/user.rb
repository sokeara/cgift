class User < ActiveRecord::Base
  validates_confirmation_of :password
  attr_accessor :password
end
