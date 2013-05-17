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

    @my_publications = Publication.find(:all, :conditions => {:designer_user_id => current_user.id}, :order => 'pub_date DESC')

  	@customers = Customer.find(:all, :conditions => {:client_id => session[:client_id]})

  end
end
