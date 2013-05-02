class AddApprovedFieldApprovals < ActiveRecord::Migration
  def up
  	add_column :approvals, :approved, :boolean
  end

  def down
  	remove_column :approvals, :approved, :boolean
  end
end
