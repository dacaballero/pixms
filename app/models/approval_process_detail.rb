class ApprovalProcessDetail < ActiveRecord::Base
  attr_accessible :approval_order, :approval_process_id, :is_final, :user_id, :client_id, :publication_status_id

  belongs_to :approval_process
  belongs_to :client
  belongs_to :user
end
