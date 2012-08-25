module JobsHelper
  def daily_jobs
    #@jobs  = current_user.jobs.where(:start_at => (Time.now.midnight)..Time.now.midnight + 1.day).order("start_at ASC")
    @jobs  = current_user.jobs.all
  end
end

