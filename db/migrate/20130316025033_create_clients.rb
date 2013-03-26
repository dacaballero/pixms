class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :logo
      t.string :phone_number
      t.text   :address
      t.string :email
      t.string :webpage
      t.string :status

      t.timestamps
    end
  end
end
