class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.integer  :user_id
      t.string :first_name
      t.string :last_name
      t.has_attached_file :avatar
      t.date :birthdate
      t.string :country
      t.text :address
      t.string :phone
      t.string :cellphone
      t.integer :client_id

      t.timestamps
    end
  end
end
