class User < ActiveRecord::Base
  #bcrypt password validation
  has_secure_password
  #record creation validation
  validates :name, presence: true
  validates :username, uniqueness: true
  validates :email, uniqueness: true
end
