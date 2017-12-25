class Team < ApplicationRecord
	has_many	:player
	has_many	:team_stat
	has_many	:article
	has_many	:result
end
