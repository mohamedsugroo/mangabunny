class Video < ApplicationRecord
	include ActionView::Helpers::DateHelper
	has_attached_file :media, styles: {
			medium: { geometry: "640x480", format: 'mp4' },
			thumb: { geometry: "640x480", format: 'jpg', time: [14,12,10, 8, 6,4,2] }
		}, processors: [:transcoder]

	validates_attachment_content_type :media, :content_type => /\Avideo\/.*\Z/


	def video_q
		if self.height >= '720'
			'HD'
		else
			'SD'
		end
	end

end
