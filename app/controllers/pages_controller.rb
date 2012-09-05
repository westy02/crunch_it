class PagesController < ApplicationController
  skip_before_filter :authenticate_user!, :except => :home
  include EventsHelper
   
  def index
    if user_signed_in?
      redirect_to pages_home_path
        end
  end

  def home  
    @jobs = current_user.jobs.all
    @events = current_user.events.order("start_at")
    @daily_events = current_user.events.order("start_at").where("start_at = ?", params[:date])
    @events_by_date = @events.group_by(&:start_at)
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
    end
  end
    
  def contact
    @title = "Contact"
  end
  
  def help
    @title= "help"
  end
  
  def admin
    @title = "Admin"
  end
  
  def settings
    @title = "Settings"
  end
  
  

