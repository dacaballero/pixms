class Customer < ActiveRecord::Base
  attr_accessible :avatar, :code, :maincontact, :name, :client_id, :customer_contacts_attributes
  has_attached_file :avatar, :styles => {:thumbnail => "86x35#", :small  => "172x70>", :medium => "258x105>"}

  belongs_to :client

  has_many :customer_contacts
  accepts_nested_attributes_for :customer_contacts
  
  
end
