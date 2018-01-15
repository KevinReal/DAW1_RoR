class Result < ApplicationRecord
	belongs_to :user, optional: true
	has_one	:article, dependent: :nullify
	belongs_to	:competition
	has_many :replies, through: :article, source: :comments
	belongs_to	:local, :class_name => 'Team'
	belongs_to	:visitor, :class_name => 'Team'
	validates :date,:journey, presence: {message: "el campo no puede quedar vacío"}
	default_scope -> {order('lower(date) ASC')}

	scope :con_fecha, ->(term=Time.now.to_date){ where("results.date like ?","%#{term}%")}
	scope :de_competition, ->(term='Liga Endesa'){ where("results.competition_id = ?", Competition.con_name(term).ids)}

	def owned_by?(owner)
    return false unless owner.is_a? User
    user == owner
  end
end
