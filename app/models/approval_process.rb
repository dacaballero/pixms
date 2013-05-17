class ApprovalProcess < ActiveRecord::Base
  attr_accessible :client_id, :name, :approval_process_details_attributes, :rejected_status_id

  belongs_to :client
  belongs_to :approval_process
  belongs_to :rejected_status, :class_name => 'PublicationStatus', :foreign_key => 'rejected_status_id'

  has_many :approval_process_details
  accepts_nested_attributes_for :approval_process_details
end
