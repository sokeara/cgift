class User < ActiveRecord::Base
  has_many :profiles, :dependent => :destroy
  has_attached_file :avatar, :default_url => "/images/:style/missing.png"

  # add field avatar to table

  validates_attachment_content_type :avatar, :content_type => ['image/jpeg', 'image/png', 'image/jpg']
  validates_confirmation_of :password
  attr_accessor :password
  # Check duplicate or existing email (Customize)
  before_update :check_duplicate_email
  # the default (validates on both create and update)
  validates :first_name, :last_name, :email, :username, presence: true
  # it will be possible to update email with a duplicated value
  validates :email, uniqueness: true, on: :create
  validates :password, presence: true, on: :create
  validates_length_of :password, minimum: 3, maximum: 10, on: :create
  # validates :password, allow_blank: true, on: :update
  validates :phone_num, numericality: true

  def check_duplicate_email
    if User.find_by_email(email)
      if User.find(id).email == email
        return true
      else
        return false
      end
    end
    return true
  end
end