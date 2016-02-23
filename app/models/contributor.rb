class Contributor < ActiveRecord::Base
  belongs_to :user
  belongs_to :jar
end
