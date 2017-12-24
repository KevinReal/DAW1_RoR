json.extract! comment, :id, :author, :published_at, :body, :created_at, :updated_at
json.url comment_url(comment, format: :json)
