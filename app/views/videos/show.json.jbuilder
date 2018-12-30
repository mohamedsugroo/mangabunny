json.partial! "videos/video", video: @video

json.comments @comments.each do |comment|
	json.id comment.id
	json.body comment.body
	json.user_id comment.user_id
	json.video_id comment.video_id
	json.post_id comment.post_id
	json.reply comment.reply
	json.video comment.video
	json.reply_to comment.reply_to
	json.post comment.post
	json.created_at comment.created_at
	json.time_ago comment.time_ago
end