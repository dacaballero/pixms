class CreateApprovals < ActiveRecord::Migration
  def change
    create_table :approvals do |t|
      t.datetime :approval_date
      t.integer :user_id
      t.string :decision
      t.integer :publication_id
      t.string :observations

      t.timestamps
    end
  end
end
