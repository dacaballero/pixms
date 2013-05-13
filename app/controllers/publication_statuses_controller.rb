class PublicationStatusesController < ApplicationController
  before_filter :authenticate_user!
  # GET /publication_statuses
  # GET /publication_statuses.json
  def index
    @publication_statuses = PublicationStatus.find(:all, :conditions => {:client_id => session[:client_id]})

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @publication_statuses }
    end
  end

  # GET /publication_statuses/1
  # GET /publication_statuses/1.json
  def show
    @publication_status = PublicationStatus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @publication_status }
    end
  end

  # GET /publication_statuses/new
  # GET /publication_statuses/new.json
  def new
    @publication_status = PublicationStatus.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @publication_status }
    end
  end

  # GET /publication_statuses/1/edit
  def edit
    @publication_status = PublicationStatus.find(params[:id])
  end

  # POST /publication_statuses
  # POST /publication_statuses.json
  def create
    @publication_status = PublicationStatus.new(params[:publication_status])
    @publication_status.client_id = session[:client_id]

    respond_to do |format|
      if @publication_status.save
        format.html { redirect_to @publication_status, :notice => 'Publication status was successfully created.' }
        format.json { render :json => @publication_status, :status => :created, :location => @publication_status }
      else
        format.html { render :action => "new" }
        format.json { render :json => @publication_status.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /publication_statuses/1
  # PUT /publication_statuses/1.json
  def update
    @publication_status = PublicationStatus.find(params[:id])

    respond_to do |format|
      if @publication_status.update_attributes(params[:publication_status])
        format.html { redirect_to @publication_status, :notice => 'Publication status was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @publication_status.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /publication_statuses/1
  # DELETE /publication_statuses/1.json
  def destroy
    @publication_status = PublicationStatus.find(params[:id])
    @publication_status.destroy

    respond_to do |format|
      format.html { redirect_to publication_statuses_url }
      format.json { head :no_content }
    end
  end
end
