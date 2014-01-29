class User < ActiveRecord::Base
  has_many :profiles, :dependent => :destroy
  validates_confirmation_of :password
  attr_accessor :password
end
