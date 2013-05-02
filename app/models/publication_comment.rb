class PublicationComment < ActiveRecord::Base
  attr_accessible :comment_id, :publication_id

  belongs_to :comment
  belongs_to :publication
end
