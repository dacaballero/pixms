class AddRejectedStatusApprovalProcess < ActiveRecord::Migration
  def up
  	add_column :approval_processes, :rejected_status_id, :integer
  end

  def down
  	remove_column :approval_processes, :rejected_status_id, :integer
  end
end
