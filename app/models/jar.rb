class Jar < ActiveRecord::Base
  belongs_to :user
  has_many :viewers, dependent: :destroy
  has_many :contributors, dependent: :destroy
  has_many :mems, dependent: :destroy

end
