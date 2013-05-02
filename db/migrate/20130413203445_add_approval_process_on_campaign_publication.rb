class AddApprovalProcessOnCampaignPublication < ActiveRecord::Migration
  def up
  	add_column :publications, :approval_process_id, :integer
  end

  def down
  	remove_column :publications, :approval_process_id, :integer
  end
end
