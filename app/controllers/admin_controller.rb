class AdminController < ApplicationController
	before_action :authenticate_admin!
	include AdminHelper

	def index
		@posts = Post.all.order(:created_at).reverse
	end

	def edit_post
		post_id = params[:post_id]
		@post = Post.find(post_id)
	end

	def update_post
		post_id = params[:post][:id]
		post_title = params[:post][:title]
		post_body = params[:post][:body]
		post = Post.find(post_id)
		post.update(title: post_title, body: post_body)
		redirect_to admin_path
	end

end
