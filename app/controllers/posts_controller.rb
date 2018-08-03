class PostsController < ApplicationController

	def index
		@featured_post = Post.last
		@posts = Post.order('created_at DESC').drop(1).paginate(page: params[:page], per_page: 15)
	end

	def show
		@post = Post.find(params[:id])
	end

end