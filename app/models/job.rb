class Job < ActiveRecord::Base
  attr_accessible :details, :name, :events_attributes
  belongs_to :user
  has_many :events
  accepts_nested_attributes_for :events, allow_destroy: true
end
