class Post < ApplicationRecord
	has_many :comments, as: :parent
end
