class ApprovalMailer < ActionMailer::Base
  	default :from => "approvals@pixelabapps.com"

	def email_next_approver(publication)
	  	@publication = publication

	  	mail(:to => @publication.current_approver, :subject => 'You have a pending approval publication')
	end

	def email_reject_approval(publication, approval)
		@publication = publication
		@designer = User.find(@publication.designer_user_id)
		@creator = User.find(@publication.creator_user_id)

		mail(:to => @designer.email, :subject => 'The publication needs to be reviewed')

		mail(:to => @creator.email, :subject => 'Your design needs to be reviewed')
	end

	def email_approval_creator(publication, approval)
		@publication = publication
		@designer = User.find(@publication.designer_user_id)
		@creator = User.find(@publication.creator_user_id)

		mail(:to => @designer.email, :subject => 'The publication needs to be reviewed')

		mail(:to => @creator.email, :subject => 'Your design needs to be reviewed')
	end
end
