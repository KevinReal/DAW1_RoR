class Competition < ApplicationRecord
	has_many	:articles
	has_many	:results
	validates :name, presence: {message: "el campo no puede quedar vacío"}, uniqueness: {case_sensitive: false, message: 'El nombre de la competición debe ser único'}
	default_scope -> {order('lower(name) ASC')}
end
