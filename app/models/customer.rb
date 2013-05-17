class Customer < ActiveRecord::Base
  attr_accessible :avatar, :code, :maincontact, :name, :client_id, :customer_contacts_attributes
  has_attached_file :avatar, :styles => {:thumbnail => "86x35#", :medium => "258x105>", :large => "516x205>"}

  belongs_to :client

  has_many :customer_contacts
  accepts_nested_attributes_for :customer_contacts

  has_many :campaigns
  
  
end
