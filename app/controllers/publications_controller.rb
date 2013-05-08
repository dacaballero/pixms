class PublicationsController < ApplicationController
  # GET /campaign_publications
  # GET /campaign_publications.json
  def index
    @publications = Publication.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @publications }
    end
  end

  # GET /campaign_publications/1
  # GET /campaign_publications/1.json
  def show
    @publication = Publication.find(params[:id])
    @new_comment = Comment.new

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @publication }
    end
  end

  # GET /campaign_publications/new
  # GET /campaign_publications/new.json
  def new
    @campaign = Campaign.find(params[:campaign_id])
    @publication = @campaign.publications.build
    @possible_users = User.where("id in (select user_id from user_profiles where id in (select user_profile_id from user_profile_clients where client_id = ?))", session[:client_id])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @publication }
    end
  end

  # GET /campaign_publications/1/edit
  def edit
    @publication = Publication.find(params[:id])
    @possible_users = User.where("id in (select user_id from user_profiles where id in (select user_profile_id from user_profile_clients where client_id = ?))", session[:client_id])
  end

  # POST /campaign_publications
  # POST /campaign_publications.json
  def create
    @publication = Publication.new(params[:publication])
    @publication.campaign_id = params[:campaign_id]
    campaign = Campaign.find(params[:campaign_id])
    @publication.code = campaign.campaign_code + '.' + (Publication.where('campaign_id = ?', campaign.id).count + 1).to_s
    @publication.version = 1
    approval_step = campaign.approval_process.approval_process_details.find(:first, :conditions => {:approval_order => 1})
    @publication.approval_process_id = campaign.approval_process_id
    @publication.publication_status_id = approval_step.publication_status_id
    @publication.current_approver = User.find(approval_step.user_id).email
    @publication.creator_user_id = current_user.id


    respond_to do |format|
      if @publication.save

        ApprovalMailer.email_next_approver(@publication).deliver

        format.html { redirect_to @publication, :notice => 'Campaign publication was successfully created.' }
        format.json { render :json => @publication, :status => :created, :location => @publication }
      else
        format.html { render :action => "new" }
        format.json { render :json => @publication.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /publications/1
  # PUT /publications/1.json
  def update
    @publication = Publication.find(params[:id])
    @publication.version = @publication.version + 1
    approval_step = @publication.approval_process.approval_process_details.find(:first, :conditions => {:approval_order => 1})
    @publication.current_approver = User.find(approval_step.user_id).email
    @publication.publication_status_id = approval_step.publication_status_id


    respond_to do |format|
      if @publication.update_attributes(params[:publication])
        format.html { redirect_to @publication, :notice => 'Campaign publication was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @publication.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /campaign_publications/1
  # DELETE /campaign_publications/1.json
  def destroy
    @publication = Publication.find(params[:id])
    @publication.destroy

    respond_to do |format|
      format.html { redirect_to publications_url }
      format.json { head :no_content }
    end
  end
end
