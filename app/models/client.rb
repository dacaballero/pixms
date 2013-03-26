class Client < ActiveRecord::Base
  attr_accessible :address, :email, :logo, :name, :phone_number, :webpage, :status, :avatar, :welcome_text
  has_attached_file :avatar, :styles => {:thumbnail => "86x35#", :small  => "172x70>", :medium => "258x105>"}

  validates_attachment_presence :avatar
end
