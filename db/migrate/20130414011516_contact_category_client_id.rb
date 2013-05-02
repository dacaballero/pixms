class ContactCategoryClientId < ActiveRecord::Migration
  def up
  	add_column :contact_categories, :client_id, :integer
  end

  def down
  	remove_column :contact_categories, :client_id, :integer
  end
end
