class ApprovalsController < ApplicationController
  before_filter :authenticate_user!
  # GET /approvals
  # GET /approvals.json
  def index
    @approvals = Approval.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @approvals }
    end
  end

  # GET /approvals/1
  # GET /approvals/1.json
  def show
    @approval = Approval.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @approval }
    end
  end

  # GET /approvals/new
  # GET /approvals/new.json
  def new
    @publication = Publication.find(params[:publication_id])
    @approval = @publication.approvals.build
    @approval.pub_bio_quick_edit = @publication.pub_bio
    @approval.pub_title_quick_edit = @publication.pub_title
    @approval.user_id = current_user.id

    if (!params[:decision].nil?)
      @approval.decision = params[:decision]
    end
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @approval }
    end
  end

  # GET /approvals/1/edit
  def edit
    @approval = Approval.find(params[:id])
  end

  # POST /approvals
  # POST /approvals.json
  def create
    @approval = Approval.new(params[:approval])
    @publication = Publication.find(@approval.publication_id)
    @approval_process = ApprovalProcess.find(@publication.approval_process_id)
    approval_process_detail = @approval_process.approval_process_details.find(:first, :conditions => {:publication_status_id => @publication.publication_status_id})
    new_process_detail = @approval_process.approval_process_details.find(:first, :conditions => {:approval_order => approval_process_detail.approval_order + 1})
    reject_process_detail = @approval_process.rejected_status

    @approval.approval_date = Time.now
    #@aproval.user_id = current_user.id

    if (@approval.decision == 'approve')
      if (!new_process_detail.is_final)
        #Is not final load next status
        @publication.publication_status_id = new_process_detail.publication_status_id
        @publication.current_approver = new_process_detail.user.email
      else
        @publication.date_final_approved = DateTime.now
        @publication.publication_status_id = new_process_detail.publication_status_id
        @publication.current_approver = ''
      end
    else
      @publication.publication_status_id = reject_process_detail.id
      @publication.current_approver = ''
    end

    respond_to do |format|
      if @approval.save and @publication.save

        if (new_process_detail.is_final)
          ApprovalMailer.email_approval_creator(@publication, @approval).deliver
        elsif(@approval.decision == 'reject')
          ApprovalMailer.email_reject_approval(@publication, @approval).deliver
        else
          ApprovalMailer.email_next_approver(@publication).deliver
          ApprovalMailer.email_approval_creator(@publication, @approval).deliver
        end

        format.html { redirect_to @approval, :notice => 'Approval was successfully created.' }
        format.json { render :json => @approval, :status => :created, :location => @approval }
      else
        format.html { render :action => "new" }
        format.json { render :json => @approval.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /approvals/1
  # PUT /approvals/1.json
  def update
    @approval = Approval.find(params[:id])

    respond_to do |format|
      if @approval.update_attributes(params[:approval])
        format.html { redirect_to @approval, :notice => 'Approval was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @approval.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /approvals/1
  # DELETE /approvals/1.json
  def destroy
    @approval = Approval.find(params[:id])
    @approval.destroy

    respond_to do |format|
      format.html { redirect_to approvals_url }
      format.json { head :no_content }
    end
  end
end
