class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :code
      t.string :maincontact
      t.attachment :avatar
      t.integer :client_id

      t.timestamps
    end
  end
end
