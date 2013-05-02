class DashboardController < ApplicationController
  def show
  	if (session[:client_id].nil?)
  		redirect_to clients_url
  	end

  	@customers = Customer.find(:all, :conditions => {:client_id => session[:client_id]})

  end
end
