class AddApprovalFieldCampaigns < ActiveRecord::Migration
  def up
  	add_column :campaigns, :approval_process_id, :integer
  end

  def down
  	remove_column :campaigns, :approval_process_id
  end
end
