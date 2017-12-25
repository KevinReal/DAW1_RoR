class Player < ApplicationRecord
	has_many :player_stat
	belongs_to	:team
end
