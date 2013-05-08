class ApprovalProcessesController < ApplicationController
  # GET /approval_processes
  # GET /approval_processes.json
  def index
    @approval_processes = ApprovalProcess.find(:all, :conditions => {:client_id => session[:client_id]})

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @approval_processes }
    end
  end

  # GET /approval_processes/1
  # GET /approval_processes/1.json
  def show
    @approval_process = ApprovalProcess.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @approval_process }
    end
  end

  # GET /approval_processes/new
  # GET /approval_processes/new.json
  def new
    @approval_process = ApprovalProcess.new
    @possible_users = User.where("id in (select user_id from user_profiles where id in (select user_profile_id from user_profile_clients where client_id = ?))", session[:client_id])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @approval_process }
    end
  end

  # GET /approval_processes/1/edit
  def edit
    @approval_process = ApprovalProcess.find(params[:id])
    @possible_users = User.where("id in (select user_id from user_profiles where id in (select user_profile_id from user_profile_clients where client_id = ?))", session[:client_id])
  end

  # POST /approval_processes
  # POST /approval_processes.json
  def create
    @approval_process = ApprovalProcess.new(params[:approval_process])
    @approval_process.client_id = session[:client_id]

    respond_to do |format|
      if @approval_process.save
        format.html { redirect_to @approval_process, :notice => 'Approval process was successfully created.' }
        format.json { render :json => @approval_process, :status => :created, :location => @approval_process }
      else
        format.html { render :action => "new" }
        format.json { render :json => @approval_process.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /approval_processes/1
  # PUT /approval_processes/1.json
  def update
    @approval_process = ApprovalProcess.find(params[:id])

    respond_to do |format|
      if @approval_process.update_attributes(params[:approval_process])
        format.html { redirect_to @approval_process, :notice => 'Approval process was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @approval_process.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /approval_processes/1
  # DELETE /approval_processes/1.json
  def destroy
    @approval_process = ApprovalProcess.find(params[:id])
    @approval_process.destroy

    respond_to do |format|
      format.html { redirect_to approval_processes_url }
      format.json { head :no_content }
    end
  end
end
