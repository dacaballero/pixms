class PublicationCommentsController < ApplicationController
  # GET /publication_comments/new
  # GET /publication_comments/new.json
  def new
    @comment = Comment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @comment }
    end
  end

  # POST /publication_comments
  # POST /publication_comments.json
  def create
    @publication = Publications.find(params[:publication_id])
    #@publication.comments.build params[:comment]

    respond_to do |format|
      if @publication.save
        format.json { render :json => @publication, :status => :created, :location => @publication }
      else
        format.json { render :json => @publication.errors, :status => :unprocessable_entity }
      end
    end
  end
end
