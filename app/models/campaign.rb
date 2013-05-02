class Campaign < ActiveRecord::Base
  attr_accessible :acum_cost, :approval_process_id, :campaign_code, :client_id, :current_budget, :customer_id, :date_ent, :date_start, :initial_budget, :is_open, :name, :avatar

  has_attached_file :avatar, :styles => {:thumbnail => "86x35#", :small  => "172x70>", :medium => "258x105>"}

  belongs_to :customer
  belongs_to :client
  belongs_to :approval_process

  has_many :publications

end
