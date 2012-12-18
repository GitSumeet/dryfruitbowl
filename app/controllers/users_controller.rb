class UsersController < ApplicationController
  
  # GET /users
  # GET /users.json
  def index
    
    # only an admin should be able to see all users
    # if a non-admin is logged in then show his entry only
    if session[:user].role == 0
      @users = User.order(:firstname)
    else
      # need find all as we need a collection on which the iterator inside
      # the view can iterate and not just one single record
      @users = User.find(:all, :conditions => ['id = ?', session[:user].userid])
    end
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @users }
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
    # we allow if the user is trying to see his own page OR if he is an admin
    # otherwise a message will popup saying that he is not authorized
    if (session[:user].userid.to_s == params[:id]) or (session[:user].role == 0)
      @user = User.find(params[:id])
    else
      flash[:not_authorized] = 'You are not authorized to view this user.' + session[:user].userid.to_s
    end
  
    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @user }
    end
  end

  # GET /users/new
  # GET /users/new.json
  def new
    
    # TODO: Do not allow non-admin users to create a new user
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @user }
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(params[:user])
    
    # set a random picture for user
    @user.picture = 'user' + (1 + rand(5)).to_s + '.jpg'
    
    respond_to do |format|
      if @user.save        
        format.html { redirect_to login_url, :notice => 'User registration successful. Please log in.' }
        format.json { render :json => @user, :status => :created, :location => @user }
      else
        format.html { render :action => "new" }
        format.json { render :json => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.json
  def update
    @user = User.find(params[:id])
      
    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to users_path, :notice => 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end
end
