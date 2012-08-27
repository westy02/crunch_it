class UserController < ApplicationController
  def home
    if signed_in?
      daily_jobs
    end
  end
  
  def day
    
  end 
  
  def month
    
  end 
  
  def list
    
  end 
end