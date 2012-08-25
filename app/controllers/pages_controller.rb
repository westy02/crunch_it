class PagesController < ApplicationController
  skip_before_filter :authenticate_user!  
   
  def home
    if user_signed_in?
      redirect_to user_home_path
    end
    @title = 'Home'
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
