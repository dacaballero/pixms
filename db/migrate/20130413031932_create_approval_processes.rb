class CreateApprovalProcesses < ActiveRecord::Migration
  def change
    create_table :approval_processes do |t|
      t.string :name
      t.integer :client_id

      t.timestamps
    end
  end
end
