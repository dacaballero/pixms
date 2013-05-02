class Comment < ActiveRecord::Base
  attr_accessible :note, :title, :user_id

  has_many :publication_comments
end
