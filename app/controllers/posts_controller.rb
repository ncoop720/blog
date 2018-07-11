class PostsController < ApplicationController

	def index
		@featured_post = Post.last
		@posts = Post.all.order(:created_at).reverse.drop(1)
	end

end
