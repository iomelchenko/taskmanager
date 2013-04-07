class ProgectsController < ApplicationController
  
  before_filter :authenticate_user!

  # GET /progects
  # GET /progects.json
  def index
    #binding.pry
    #@progects = Progect.find_by_user_id(current_user.id)
    @progects = Progect.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @progects }
    end
  end

  # GET /progects/1
  # GET /progects/1.json
  def show
    @progect = Progect.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @progect }
    end
  end

  # GET /progects/new
  # GET /progects/new.json
  def new
    @progect = Progect.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @progect }
    end
  end

  # GET /progects/1/edit
  def edit
    @progect = Progect.find(params[:id])
  end

  # POST /progects
  # POST /progects.json
  def create
    @progect = Progect.new(params[:progect])
    @progect.user_id = current_user.id

    respond_to do |format|
      if @progect.save
        format.html { redirect_to @progect, :notice => 'Progect was successfully created.' }
        format.json { render :json => @progect, :status => :created, :location => @progect }
      else
        format.html { render :action => "new" }
        format.json { render :json => @progect.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /progects/1
  # PUT /progects/1.json
  def update
    @progect = Progect.find(params[:id])

    respond_to do |format|
      if @progect.update_attributes(params[:progect])
        format.html { redirect_to @progect, :notice => 'Progect was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @progect.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /progects/1
  # DELETE /progects/1.json
  def destroy
    @progect = Progect.find(params[:id])
    @progect.destroy

    respond_to do |format|
      format.html { redirect_to progects_url }
      format.json { head :no_content }
    end
  end
end
