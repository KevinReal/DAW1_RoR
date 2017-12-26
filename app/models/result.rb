class Result < ApplicationRecord
	has_one	:article, dependent: :nullify
	belongs_to	:competition
	belongs_to	:team, :class_name => 'Team', :foreign_key => 'team_id_local'
	belongs_to	:team, :class_name => 'Team', :foreign_key => 'team_id_visitor'
	validates :date, presence: {message: "el campo no puede quedar vacío"}
	default_scope -> {order('lower(date) ASC')}
end
