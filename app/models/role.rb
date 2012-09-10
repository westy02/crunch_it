class Role < ActiveRecord::Base
  attr_accessible :description, :name
  has_many :assignments
  has_many :users, :through => :assignments
end
