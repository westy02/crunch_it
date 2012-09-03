class PagesController < ApplicationController
  skip_before_filter :authenticate_user!, :except => :home
   
  def index
    if user_signed_in?
      redirect_to pages_home_path
        end
  end

  def home  
    @jobs = current_user.jobs.all
    @events = current_user.events.all
    @daily_events = current_user.events.where(:start_at => (Time.now.midnight)..Time.now.midnight + 1.day).order("start_at ASC")
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
  
  

