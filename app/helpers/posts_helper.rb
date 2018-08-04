module PostsHelper

	def shorten_body body
		new_body = body[0..240] + '...'
		new_body
	end

end
