class CreateUserProfileCustomers < ActiveRecord::Migration
  def change
    create_table :user_profile_customers do |t|
		t.integer 	:customer_id
    	t.integer	:user_profile_id
      t.timestamps
    end
  end
end
