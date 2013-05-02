class ClientAddAttachment < ActiveRecord::Migration
  def up
  	change_table :clients do |t|
  		t.has_attached_file :avatar
  	end
  end

  def down
  	drop_attached_file :clients, :avatar
  end
end
