class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :check_client

  def check_client

  		if not current_user.nil? and current_user.user_profile.user_profile_clients.count == 1
  			session[:client_id] = current_user.user_profile.user_profile_clients.first.id
  		end
  	
  end
  #Load the menu
end
