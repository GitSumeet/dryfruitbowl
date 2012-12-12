class BowlsController < ApplicationController
  # GET /bowls
  # GET /bowls.json
  def index
    @bowls = Bowl.all

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

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @bowl }
    end
  end

  # GET /bowls/1/edit
  def edit
    @bowl = Bowl.find(params[:id])
  end

  # POST /bowls
  # POST /bowls.json
  def create
    @bowl = Bowl.new(params[:bowl])

    respond_to do |format|
      if @bowl.save
        format.html { redirect_to @bowl, :notice => 'Bowl was successfully created.' }
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

    respond_to do |format|
      if @bowl.update_attributes(params[:bowl])
        format.html { redirect_to @bowl, :notice => 'Bowl was successfully updated.' }
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
