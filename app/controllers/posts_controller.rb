class PostsController < ApplicationController

	def index
		@posts = Post.all.order(:created_at).reverse
	end

end
