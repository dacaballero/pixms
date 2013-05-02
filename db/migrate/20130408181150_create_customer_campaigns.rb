class CreateCustomerCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.string :name
      t.date :date_start
      t.date :date_ent
      t.boolean :is_open
      t.decimal :initial_budget
      t.decimal :current_budget
      t.decimal :acum_cost
      t.integer :customer_id
      t.string :campaign_code
      t.integer :approval_flow_id
      t.integer :client_id

      t.timestamps
    end
  end
end
