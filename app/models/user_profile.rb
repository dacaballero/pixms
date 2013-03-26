class UserProfile < ActiveRecord::Base
  attr_accessible :address, :avatar, :birthdate, :cellphone, :client_id, :country, :first_name, :last_name, :phone, :user_id
  has_attached_file :avatar, :styles => {:thumbnail => "31x31#", :small  => "93x93>", :medium => "155x155>"}

  belongs_to :user
  has_many :clients

  def name
  	if first_name.nil? and last_name.nil?
  		'John Doe'
  	elsif first_name.nil?
  		last_name
  	elsif last_name.nil?
  		first_name
  	else  		
  		first_name + ' ' + last_name
  	end
  end

end
