class PostsController < ApplicationController

	def index
		@posts = Post.all
	end

	def edit
		before_action :authenticate_user!
		post_id = params[:id]
		post = Post.find(post_id)
	end

end
