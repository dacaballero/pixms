class PublicationArchive < ActiveRecord::Base
  attr_accessible :campaign_id, :publication_id, :code, :current_approver, :date_final_approved, :description, :observations, :pub_bio, :pub_date, :pub_image, :publication_status_id, :publication_type_id

  has_attached_file :pub_image, :styles => {:thumbnail => "86x35#", :small  => "172x70>", :medium => "258x105>"}
end
