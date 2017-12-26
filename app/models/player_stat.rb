class PlayerStat < ApplicationRecord
	belongs_to :player
  validates :name, :value, presence: {message: "el campo no puede quedar vacío"}
	default_scope -> {order('lower(player_id) ASC')}
end
