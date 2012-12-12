class DryFruitsController < ApplicationController
  
  # GET /dry_fruits
  # GET /dry_fruits.json
  def index
    @dry_fruits = DryFruit.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @dry_fruits }
    end
  end

  # GET /dry_fruits/1
  # GET /dry_fruits/1.json
  def show
    @dry_fruit = DryFruit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @dry_fruit }
    end
  end

  # GET /dry_fruits/new
  # GET /dry_fruits/new.json
  def new
    @dry_fruit = DryFruit.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @dry_fruit }
    end
  end

  # GET /dry_fruits/1/edit
  def edit
    @dry_fruit = DryFruit.find(params[:id])
  end

  # POST /dry_fruits
  # POST /dry_fruits.json
  def create
    @dry_fruit = DryFruit.new(params[:dry_fruit])

    respond_to do |format|
      if @dry_fruit.save
        format.html { redirect_to @dry_fruit, :notice => 'Dry fruit was successfully created.' }
        format.json { render :json => @dry_fruit, :status => :created, :location => @dry_fruit }
      else
        format.html { render :action => "new" }
        format.json { render :json => @dry_fruit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /dry_fruits/1
  # PUT /dry_fruits/1.json
  def update
    @dry_fruit = DryFruit.find(params[:id])

    respond_to do |format|
      if @dry_fruit.update_attributes(params[:dry_fruit])
        format.html { redirect_to @dry_fruit, :notice => 'Dry fruit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @dry_fruit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /dry_fruits/1
  # DELETE /dry_fruits/1.json
  def destroy
    @dry_fruit = DryFruit.find(params[:id])
    @dry_fruit.destroy

    respond_to do |format|
      format.html { redirect_to dry_fruits_url }
      format.json { head :no_content }
    end
  end
end
