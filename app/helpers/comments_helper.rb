module CommentsHelper

	def changeCommentColor color
		case color
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
