class Result < ApplicationRecord
	has_one	:article
	belongs_to	:competition
	has_one	:local_team, class_name:'team', foreign_key: 'local_team_id'
	has_one	:visitor_team, class_name:'team', foreign_key: 'visitor_team_id'
end
