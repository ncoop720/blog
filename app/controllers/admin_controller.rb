class AdminController < ApplicationController
	before_action :authenticate_admin!

	def edit_post
		post_id = params[:post_id]
		@post = Post.find(post_id)
	end

end
