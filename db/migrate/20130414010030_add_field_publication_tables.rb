class AddFieldPublicationTables < ActiveRecord::Migration
  def up
  	add_column :approval_process_details, :publication_status_id, :integer
  end

  def down
  	remove_column :approval_process_details, :publication_status_id, :integer
  end
end
