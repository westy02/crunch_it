class PagesController < ApplicationController
  skip_before_filter :authenticate_user!, :except => :home
  include CalendarHelper
   
  def index
    if user_signed_in?
      redirect_to pages_home_path
        end
  end

  def home  
    @title = 'Home'
    @jobs = current_user.jobs.all
    @events = current_user.events.all
    @month = (params[:month] || (Time.zone || Time).now.month).to_i
    @year = (params[:year] || (Time.zone || Time).now.year).to_i
    @shown_month = Date.civil(@year, @month)
    @event_strips = current_user.events.event_strips_for_month(@shown_month)
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

