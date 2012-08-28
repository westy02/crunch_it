class PagesController < ApplicationController
  skip_before_filter :authenticate_user!, :except => :home
   
  def index
    if user_signed_in?
      redirect_to pages_home_path
        end
  end

  def home  
    @title = 'Home'
    @jobs = current_user.jobs.all
    @events = current_user.events.all
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
end
