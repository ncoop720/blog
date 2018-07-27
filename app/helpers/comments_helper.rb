module CommentsHelper

	def changeCommentColor color
		case color
		when 'blue'
			'yellow'
		when 'yellow'
			'red'
		when 'red'
			'green'
		when 'green'
			'orange'
		when 'orange'
			'purple'
		when 'purple'
			'blue'
		else
			'blue'
		end
	end

end
