module ApplicationHelper
	def title(page_title)
		content_for(:title){ page_title }
	end
	def subtitle(page_title)
		content_for(:subtitle) { page_title }
	end

	def breadcrumbs(*p)
		content_for(:breadcrumbs){
			@breadcrumbs = p
			render :partial => 'layouts/breadcrumb'
		}
	end
end
