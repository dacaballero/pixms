class ChangeApprovalFieldCustomerCampaign < ActiveRecord::Migration
  def up
  	#add_column :campaigns, :approval_process_id, :integer
  	#remove_column :campaigns, :approval_flow_id
  end

  def down
  	#remove_column :campaigns, :approval_process_id
  	#add_column :campaigns, :approval_flow_id, :integer
  end
end
