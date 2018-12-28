json.extract! comment, :id, :user_id, :video_id, :post_id, :body, :reply, :reply_to, :video, :post, :created_at, :updated_at
json.url comment_url(comment, format: :json)
