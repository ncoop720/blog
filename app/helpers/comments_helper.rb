module CommentsHelper

	def changeCommentColor color
		case color
		when 'none'
			'blue'
		when 'blue'
			'yellow'
		when 'yellow'
			'red'
		when 'red'
			'blue'
		else
			'blue'
		end
	end

end
