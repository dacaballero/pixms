class Approval < ActiveRecord::Base
  attr_accessible :approval_date, :decision, :observations, :publication_id, :user_id, :approved, :pub_title_quick_edit, :pub_bio_quick_edit, :has_pub_bio_quick_edit, :has_pub_title_quick_edit, :approval_status_id

  belongs_to :publication
  belongs_to :user
  belongs_to :approval_status

end
