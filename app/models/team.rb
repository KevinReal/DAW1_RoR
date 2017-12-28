class Team < ApplicationRecord
	has_many	:players, dependent: :nullify
	has_many	:team_stats, dependent: :nullify
	has_many	:articles, dependent: :nullify
	has_many	:results
	validates :name, presence: {message: "el campo no puede quedar vacío"},uniqueness: {case_sensitive: false, message: ' del equipo debe ser único'}
	
end
