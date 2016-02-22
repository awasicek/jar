class User < ActiveRecord::Base
  #bcrypt password validation
  has_secure_password

  #record creation validation
  validates :name, presence: true
  validates :username, uniqueness: true
  validates :email, uniqueness: true

  #user relationship to jar
  has_many :jars, dependent: :destroy

  #user relationship to memories
  has_many :mems, through: :jars

end
