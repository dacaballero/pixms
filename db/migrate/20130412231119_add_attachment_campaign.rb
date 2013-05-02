class AddAttachmentCampaign < ActiveRecord::Migration
  def up
  	change_table :campaigns do |t|
  		t.has_attached_file :avatar
  	end
  end

  def down
  	drop_attached_file :campaigns, :avatar
  end
end
