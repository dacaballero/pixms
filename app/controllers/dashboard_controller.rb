class DashboardController < ApplicationController
  def show
  	@customers = Customer.find(:all, :conditions => {:client_id => session[:client_id]})
  end
end
