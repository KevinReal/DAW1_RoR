class Comment < ApplicationRecord
	belongs_to	:article
	validates :creator, :published_at, :body, presence: {message: "el campo no puede quedar vacío"}
	default_scope -> {order('lower(article_id) ASC')}
end
