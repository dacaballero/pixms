class AddQuickEditFieldApprovals < ActiveRecord::Migration
  def up
  	add_column :approvals, :pub_title_quick_edit, :string
  	add_column :approvals, :pub_bio_quick_edit, :string
  	add_column :approvals, :has_pub_bio_quick_edit, :boolean
  	add_column :approvals, :has_pub_title_quick_edit, :boolean
    add_column :approvals, :approval_status_id, :integer
  end

  def down
  	remove_column :approvals, :pub_title_quick_edit, :string
  	remove_column :approvals, :pub_bio_quick_edit, :string
  	remove_column :approvals, :has_pub_bio_quick_edit, :boolean
  	remove_column :approvals, :has_pub_title_quick_edit, :boolean
    remove_column :approvals, :approval_status_id, :integer
  end
end
