class UserProfile < ActiveRecord::Base
  attr_accessible :address, :avatar, :birthdate, :cellphone, :country, :first_name, :last_name, :phone, :user_id, :user_profile_clients_attributes, :user_profile_customers_attributes
  has_attached_file :avatar, :styles => {:thumbnail => "31x31#", :small  => "93x93>", :medium => "155x155>"}

  belongs_to :user
  has_many :clients, :through => :user_profile_clients
  has_many :user_profile_clients, :dependent => :destroy
  accepts_nested_attributes_for :user_profile_clients, :allow_destroy => true

  has_many :customers, :through => :user_profile_customers
  has_many :user_profile_customers, :dependent => :destroy
  accepts_nested_attributes_for :user_profile_customers, :allow_destroy => true

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
