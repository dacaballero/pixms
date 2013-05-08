class CampaignsController < ApplicationController
  # GET /customer_campaigns
  # GET /customer_campaigns.json
  def index
    @campaigns = Campaign.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @campaigns }
    end
  end

  # GET /customer_campaigns/1
  # GET /customer_campaigns/1.json
  def show
    @campaign = Campaign.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @campaign }
    end
  end

  # GET /customer_campaigns/new
  # GET /customer_campaigns/new.json
  def new
    @customer  = Customer.find(params[:customer_id])
    @campaign = @customer.campaigns.build
    @campaign.client_id = session[:client_id]
    @possible_approval_processes = ApprovalProcess.where('client_id = ?', session[:client_id])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @campaign }
    end
  end

  # GET /customer_campaigns/1/edit
  def edit
    @campaign = Campaign.find(params[:id])
  end

  # POST /customer_campaigns
  # POST /customer_campaigns.json
  def create
    @campaign = Campaign.new(params[:campaign])
    @campaign.client_id = session[:client_id]
    @campaign.customer_id = params[:customer_id]
    @customer = Customer.find(@campaign.customer_id)
    @campaign.campaign_code = @customer.code + '-' + (@customer.campaigns.count + 1).to_s

    respond_to do |format|
      if @campaign.save
        format.html { redirect_to @campaign, :notice => 'Customer campaign was successfully created.' }
        format.json { render :json => @campaign, :status => :created, :location => @campaign }
      else
        format.html { render :action => "new" }
        format.json { render :json => @campaign.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /customer_campaigns/1
  # PUT /customer_campaigns/1.json
  def update
    @campaign = Campaign.find(params[:id])

    respond_to do |format|
      if @campaign.update_attributes(params[:campaign])
        format.html { redirect_to @campaign, :notice => 'Customer campaign was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @campaign.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_campaigns/1
  # DELETE /customer_campaigns/1.json
  def destroy
    @campaign = Campaign.find(params[:id])
    @campaign.destroy

    respond_to do |format|
      format.html { redirect_to campaigns_url }
      format.json { head :no_content }
    end
  end
end
