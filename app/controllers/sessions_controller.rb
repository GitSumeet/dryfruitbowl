class SessionsController < ApplicationController
  
  def new
  end

  def create
    user = User.authenticate(params[:email], params[:password])
    if user == nil
      redirect_to login_url, :alert => "Inavlid username or password. Please try again."
      return
    else
      session[:userid] = user.id
      redirect_to :controller => "bowls", :action => "index"   
    end    
  end

  def destroy
    session[:userid] = nil
    redirect_to home_url
  end
  
end
