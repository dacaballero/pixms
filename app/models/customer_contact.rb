class CustomerContact < ActiveRecord::Base
  attr_accessible :bio, :contact_category_id, :first_name, :last_name, :position, :address, :main_phone, :other_phone, :customer_id

  belongs_to :customer
  belongs_to :customer_contact
end
