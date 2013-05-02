class PublicationsAddAssignee < ActiveRecord::Migration
  def up
  	add_column :publications, :creator_user_id, :integer
  	add_column :publications, :designer_user_id, :integer
  end

  def down
  	remove_column :publications, :creator_user_id, :integer
  	remove_column :publications, :designer_user_id, :integer
  end
end
