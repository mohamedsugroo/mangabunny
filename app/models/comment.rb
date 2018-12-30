class Comment < ApplicationRecord
	include ActionView::Helpers::DateHelper

	def time_ago
		time_ago_in_words(self.created_at)
	end
end
