class Mem < ActiveRecord::Base
  belongs_to :jar
  # belongs_to :user, through: :jars
end
