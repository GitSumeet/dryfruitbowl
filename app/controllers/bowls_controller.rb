class BowlsController < ApplicationController
  # GET /bowls
  # GET /bowls.json
  def index
    if session[:user] == nil
      redirect_to login_url
      return
    else
      @bowls = Bowl.find(:all, :conditions => ['user_id = ?', session[:user].userid])
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @bowls }
    end
  end

  # GET /bowls/1
  # GET /bowls/1.json
  def show
    @bowl = Bowl.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @bowl }
    end
  end

  # GET /bowls/new
  # GET /bowls/new.json
  def new
    @bowl = Bowl.new
    @dry_fruits = DryFruit.all
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @bowl }
    end
  end

  # GET /bowls/1/edit
  def edit
    @bowl = Bowl.find(params[:id])
    @dry_fruits = DryFruit.all
  end

  # POST /bowls
  # POST /bowls.json
  def create
    @bowl = Bowl.new(params[:bowl])
    
    # set the current user's id and the creation time for this bowl
    @bowl.user_id = session[:user].userid.to_i
    @bowl.created = Time.now
    
    respond_to do |format|
      if @bowl.save

        Rails.logger.info "Adding contents for bowl"
        
        params.keys.each do |param|
          if param.start_with?("input_") and (params[param] != "")            
            @bowl.contents.create(:bowl_id => @bowl.id, :dryfruit_id => param[6, 2], :quantity => params[param])  
          end
        end
        
        format.html { redirect_to bowls_path, :notice => 'Bowl was successfully created.' }
        format.json { render :json => @bowl, :status => :created, :location => @bowl }
      else
        format.html { render :action => "new" }
        format.json { render :json => @bowl.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /bowls/1
  # PUT /bowls/1.json
  def update
    @bowl = Bowl.find(params[:id])
        
    # set bowl modify time
    @bowl.modified = Time.now
    
    respond_to do |format|
      if @bowl.update_attributes(params[:bowl])
        
        Rails.logger.info "Updating Bowl Contents"
        
        # remove all contents for this bowl and add new
        @bowl.contents.delete_all("bowl_id=" + @bowl.id)
        
        params.keys.each do |param|
          if param.start_with?("input_") and (params[param] != "")            
            @bowl.contents.create(:bowl_id => @bowl.id, :dryfruit_id => param[6, 2], :quantity => params[param])  
          end
        end

        format.html { redirect_to bowls_path, :notice => 'Bowl was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @bowl.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /bowls/1
  # DELETE /bowls/1.json
  def destroy
    @bowl = Bowl.find(params[:id])
    @bowl.destroy

    respond_to do |format|
      format.html { redirect_to bowls_url }
      format.json { head :no_content }
    end
  end
end
