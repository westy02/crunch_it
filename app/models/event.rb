class Event < ActiveRecord::Base
  attr_accessible :end_at, :job_id, :name, :start_at, :user_id, :start_time, :end_time
  belongs_to :user
end