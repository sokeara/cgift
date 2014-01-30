class User < ActiveRecord::Base
  has_many :profiles, :dependent => :destroy

  validates_confirmation_of :password
  attr_accessor :password
  # the default (validates on both create and update)
  validates :first_name, :last_name, :email, :username, presence: true
  # it will be possible to update email with a duplicated value
  validates :email, uniqueness: true, on: :create
  validates :password, presence: true, on: :create
  validates :password, length: { minimum: 10 }, length: { maximum: 15 }, on: :create
  # validates :password, allow_blank: true, on: :update
  validates :phone_num, numericality: true
end
