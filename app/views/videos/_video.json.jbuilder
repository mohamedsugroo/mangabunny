json.extract! video, :id, :title, :description, :user_id, :duration, :quality, :video_q, :bitrate , :size, :video_stream, :video_codec, :colorspace, :resolution, :width, :height, :audio_stream, :audio_codec, :audio_sample_rate, :audio_channels, :created_at, :updated_at
json.url video_url(video, format: :json)
