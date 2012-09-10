class Assignment < ActiveRecord::Base
  attr_accessible :job_id, :lifecycle_id, :role_id, :user_id
  belongs_to :user
  belongs_to :role
  belongs_to :job
  belongs_to :lifecycle
end
