class UsersController < ApplicationController

def index
     @users = User.paginate(page: params[:page])
  end
  
  def show
    @user = User.find(params[:id])
    @jobs = @user.jobs.paginate(page: params[:page])
    #@job = Job.find(params[:id])
    #@events = @job.events.order("start_at")

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end
  
   def following
    @title = "Following"
    @user = User.find(params[:id])
    @users = @user.following.paginate(:page => params[:page])
    render 'show_follow'
  end

  def followers
    @title = "Followers"
    @user = User.find(params[:id])
    @users = @user.followers.paginate(:page => params[:page])
    #@suppliers = @user.followers.where(:role => "supplier")
    render 'show_follow'
  end

end

