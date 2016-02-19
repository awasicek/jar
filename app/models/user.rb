class User < ActiveRecord::Base
  #bcrypt password validation
  has_secure_password
end
