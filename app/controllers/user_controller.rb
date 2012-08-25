class UserController < ApplicationController
  def home
    if signed_in?
      daily_jobs
  end
end
end