class Job < ActiveRecord::Base
  attr_accessible :details, :name, :lifecycle_ids, :events_attributes
  belongs_to :user
  has_many :events
  has_many :assignments, dependent: :destroy
  has_many :lifecycles, :through => :assignments, dependent: :destroy
  accepts_nested_attributes_for :events, allow_destroy: true
  accepts_nested_attributes_for :lifecycles, allow_destroy: true
end
