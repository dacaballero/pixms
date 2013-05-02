class CreateApprovalProcessDetails < ActiveRecord::Migration
  def change
    create_table :approval_process_details do |t|
      t.integer :approval_process_id
      t.integer :user_id
      t.integer :approval_order
      t.boolean :is_final

      t.timestamps
    end
  end
end
