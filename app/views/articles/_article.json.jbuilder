json.extract! article, :id, :author, :published_at, :body, :title, :subtitle, :created_at, :updated_at
json.url article_url(article, format: :json)
