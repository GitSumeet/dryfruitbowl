require 'session_data'

class SessionsController < ApplicationController
  
  def new
  end

  def create
    user = User.authenticate(params[:email], params[:password])
    if user == nil
      redirect_to login_url, :alert => "Invalid username or password. Please try again."
      return
    else
      # set user object values that we want to use
      session[:user] = SessionData.new(user.id, user.firstname, user.role)
      redirect_to :controller => "bowls", :action => "index"   
    end    
  end

  def destroy
    session[:user] = nil
    redirect_to home_url
  end
  
end
