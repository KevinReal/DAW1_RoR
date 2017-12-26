class Player < ApplicationRecord
	has_many :player_stats, dependent: :nullify
	belongs_to	:team
	validates :name, :number, presence: {message: "el campo no puede quedar vacío"} 
	default_scope -> {order('lower(team_id) ASC')}
	default_scope -> {order('lower(name) ASC')}
end
