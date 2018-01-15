class Player < ApplicationRecord
	mount_uploader :foto, FotoUploader
	belongs_to :user, optional: true
	has_many :player_stats, dependent: :nullify
	belongs_to	:team
	validates :name, :number, presence: {message: "el campo no puede quedar vacío"} 
	default_scope -> {order('lower(team_id) ASC')}
	default_scope -> {order('lower(name) ASC')}
end
