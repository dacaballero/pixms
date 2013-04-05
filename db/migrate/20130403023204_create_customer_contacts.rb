class CreateCustomerContacts < ActiveRecord::Migration
  def change
    create_table :customer_contacts do |t|
      t.string :first_name
      t.string :last_name
      t.integer :contact_category_id
      t.string :position
      t.string :bio
      t.string :address
      t.string :main_phone
      t.string :other_phone
      t.integer :customer_id

      t.timestamps
    end
  end
end
