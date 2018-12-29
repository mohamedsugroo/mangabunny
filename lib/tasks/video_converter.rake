require 'streamio-ffmpeg'

namespace :video do
	desc "Video Converter"
	task :converter => :environment do
		videos = Video.all


		for video in videos
			url = video.media.path(:original)
			puts url
			movie = FFMPEG::Movie.new(url)
			if movie.valid?
				# options = {:video_codec => "libx264", :frame_rate => 10, :resolution => movie.resolution, :video_bitrate => 300, :video_bitrate_tolerance => 100,
				# 	:croptop => 60, :cropbottom => 60, :cropleft => 10, :cropright => 10, :aspect => 1.333333,
				# 	:audio_codec => "libfaac", :audio_bitrate => 32, :audio_sample_rate => 22050, :audio_channels => 1,
				# 	:threads => 2,
				# 	:custom => "-flags +loop -cmp +chroma -partitions +parti4x4+partp8x8 -flags2 +mixed_refs -me_method umh -subq 6 -refs 6 -rc_eq 'blurCplx^(1-qComp)' -coder 0 -me_range 16 -g 250 -keyint_min 25 -sc_threshold 40 -i_qfactor 0.71 -qcomp 0.6 -qmin 10 -qmax 51 -qdiff 4 -level 21"}
				# movie.transcode('movie.mp4') do |progress| 
				# 	puts progress 
				# 	video.update(progress: progress)
				# end
				video.update(duration: movie.duration, bitrate: movie.bitrate, size: movie.size, video_stream: movie.video_stream, video_codec: movie.video_codec, colorspace: movie.colorspace, resolution: movie.resolution, width: movie.width, height: movie.height, audio_stream: movie.audio_stream, audio_codec: movie.audio_codec, audio_sample_rate: movie.audio_sample_rate, audio_channels: movie.audio_channels)
				# frame_rate: movie.frame_rate, audio_streams: movie.audio_streams
			end
		end
	end
end