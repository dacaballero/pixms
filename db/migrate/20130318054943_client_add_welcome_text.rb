class ClientAddWelcomeText < ActiveRecord::Migration
  def up
  	add_column :clients, :welcome_text, :text
  end

  def down
  	remove_column :clients, :welcome_text, :text
  end
end
