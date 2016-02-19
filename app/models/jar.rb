class Jar < ActiveRecord::Base
  belongs_to :user

  has_many :mems, dependent: :destroy

end
