module EventsHelper
  def daily_events
    current_user.events.where(:start_at => (Time.now.midnight)..Time.now.midnight + 1.day).order("start_at ASC")
  end
end
