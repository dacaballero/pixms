class CreateUserProfileClients < ActiveRecord::Migration
  def change
    create_table :user_profile_clients do |t|
    	t.integer 	:client_id
    	t.integer	:user_profile_id
      	t.timestamps
    end
  end
end
