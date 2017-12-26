class TeamStat < ApplicationRecord
	belongs_to :team
	validates :name, :value, presence: {message: "el campo no puede quedar vacío"}
	default_scope -> {order('lower(team_id) ASC')}
end
