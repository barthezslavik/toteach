class Wcourse < ActiveRecord::Base

  has_many :wthemes

  validates_presence_of :name
end
