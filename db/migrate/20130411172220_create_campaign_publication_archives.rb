class CreateCampaignPublicationArchives < ActiveRecord::Migration
  def change
    create_table :publication_archives do |t|
      t.integer :publication_id
      t.string :name
      t.string :code
      t.string :pub_bio
      t.string :description
      t.integer :version
      t.string :pub_title
      t.has_attached_file :pub_image
      t.integer :publication_type_id
      t.string :current_approver
      t.integer :publication_status_id
      t.date :date_final_approved
      t.date :pub_date
      t.integer :campaign_id
      t.string :observations

      t.timestamps
    end
  end
end
