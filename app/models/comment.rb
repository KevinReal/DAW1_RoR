class Comment < ApplicationRecord
	belongs_to	:article
	belongs_to 	:user
	validates :user_id, :body, presence: {message: "el campo no puede quedar vacío"}
	default_scope -> {order('created_at ASC')}
end
