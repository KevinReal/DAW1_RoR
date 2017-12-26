class Comment < ApplicationRecord
	belongs_to	:article
	validates :author, :published_at, :body, presence: {message: "el campo no puede quedar vacío"}
	default_scope -> {order('lower(article_id) ASC')}
end
