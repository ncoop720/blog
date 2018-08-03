class PostsController < ApplicationController

	def index
		@featured_post = Post.last
		@posts = Post.paginate(page: params[:page], per_page: 15).order('created_at DESC').drop(1)
	end

	def show
		@post = Post.find(params[:id])
	end

end
