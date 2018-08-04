class PostsController < ApplicationController
	require 'will_paginate/array'
	include PostsHelper

	def index
		@featured_post = Post.last
		@posts = Post.order('created_at DESC').drop(1).paginate(page: params[:page], per_page: 12)
		respond_to do |format|
		  format.html
		  format.js
		end
	end

	def show
		@post = Post.find(params[:id])
	end

end