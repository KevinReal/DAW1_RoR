class Competition < ApplicationRecord
	mount_uploader :foto, FotoUploader
	belongs_to :user, optional: true	
	has_many	:articles
	has_many	:results
	has_and_belongs_to_many :teams
	has_many :replies, through: :articles, source: :comments
	validates :name, presence: {message: "el campo no puede quedar vacío"}, uniqueness: {case_sensitive: false, message: 'El nombre de la competición debe ser único'}
	#default_scope -> {order('lower(name) ASC')}

	scope :con_name, ->(term=''){ where("competitions.name like ?","%#{term}%")}

	def owned_by?(owner)
    return false unless owner.is_a? User
    user == owner
  end
end
