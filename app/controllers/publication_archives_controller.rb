class PublicationArchivesController < ApplicationController
  # GET /campaign_publication_archives
  # GET /campaign_publication_archives.json
  def index
    @publication_archives = PublicationArchive.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @campaign_publication_archives }
    end
  end

  # GET /campaign_publication_archives/1
  # GET /campaign_publication_archives/1.json
  def show
    @publication_archive = PublicationArchive.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @publication_archive }
    end
  end

  # GET /campaign_publication_archives/new
  # GET /campaign_publication_archives/new.json
  def new
    @publication_archive = PublicationArchive.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @publication_archive }
    end
  end

  # GET /campaign_publication_archives/1/edit
  def edit
    @publication_archive = PublicationArchive.find(params[:id])
  end

  # POST /campaign_publication_archives
  # POST /campaign_publication_archives.json
  def create
    @publication_archive = PublicationArchive.new(params[:publication_archive])

    respond_to do |format|
      if @publication_archive.save
        format.html { redirect_to @publication_archive, :notice => 'Campaign publication archive was successfully created.' }
        format.json { render :json => @publication_archive, :status => :created, :location => @publication_archive }
      else
        format.html { render :action => "new" }
        format.json { render :json => @publication_archive.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /campaign_publication_archives/1
  # PUT /campaign_publication_archives/1.json
  def update
    @publication_archive = PublicationArchive.find(params[:id])

    respond_to do |format|
      if @publication_archive.update_attributes(params[:publication_archive])
        format.html { redirect_to @publication_archive, :notice => 'Campaign publication archive was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @publication_archive.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /campaign_publication_archives/1
  # DELETE /campaign_publication_archives/1.json
  def destroy
    @publication_archive = PublicationArchive.find(params[:id])
    @publication_archive.destroy

    respond_to do |format|
      format.html { redirect_to publication_archives_url }
      format.json { head :no_content }
    end
  end
end
