class Jar < ActiveRecord::Base
  belongs_to :user
  has_many :viewers
  has_many :contributors
  has_many :mems, dependent: :destroy

end
