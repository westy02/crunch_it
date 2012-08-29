class Event < ActiveRecord::Base
  attr_accessible :end_at, :job_id, :name, :start_at, :user_id
  belongs_to :user
  has_event_calendar
end
