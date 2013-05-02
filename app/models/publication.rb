class Publication < ActiveRecord::Base
  attr_accessible :code, :current_approver, :date_final_approved, :description, :name, :pub_bio, :pub_date, :pub_image, :pub_title, :publication_status_id, :publication_type_id, :version, :approval_process_id, :campaign_id, :creator_user_id, :designer_user_id

  has_attached_file :pub_image, :styles => {:thumbnail => "86x35#", :small  => "172x70>", :medium => "258x105>"}
  
  belongs_to :publication_type
  belongs_to :publication_status
  belongs_to :approval_process
  has_many :approvals

  belongs_to :campaign

  has_many :publication_comments
  has_many :comments, :through => :publication_comments
end
