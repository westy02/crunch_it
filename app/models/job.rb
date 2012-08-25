class Job < ActiveRecord::Base
  attr_accessible :details, :name
  belongs_to :user
end
