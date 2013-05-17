class DashboardsController < ApplicationController
	before_filter :authenticate_user!
  def show
  	if (session[:client_id].nil?)
  		redirect_to clients_url
  	end

  	@customers = Customer.find(:all, :conditions => {:client_id => session[:client_id]})

  end

  def index
  	if (session[:client_id].nil?)
  		redirect_to clients_url
  	end

  	@customers = Customer.find(:all, :conditions => {:client_id => session[:client_id]})

  end
end
