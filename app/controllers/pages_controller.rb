class PagesController < ApplicationController
  
   skip_before_filter :require_login
   
  def home
    @title = 'Home'
  end

  def contact
    @title = "Contact"
  end

  def about
    @title = "About"
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
