class Lifecycle < ActiveRecord::Base
  attr_accessible :description, :name, :rank
  has_many :assignments
  has_many :jobs, :through => :assignments
end
