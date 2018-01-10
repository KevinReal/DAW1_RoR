class Team < ApplicationRecord
	belongs_to :user, optional: true
	has_many	:players, dependent: :nullify
	has_many	:team_stats, dependent: :nullify
	has_many	:articles, dependent: :nullify
	has_many	:locals, :class_name => 'Result', :foreign_key => 'local_id'
	has_many	:visitors, :class_name => 'Result', :foreign_key => 'visitor_id'
	has_and_belongs_to_many :competitions
	has_many :replies, through: :articles, source: :comments
	validates :name, presence: {message: "el campo no puede quedar vacío"},uniqueness: {case_sensitive: false, message: ' del equipo debe ser único'}

	scope :con_name, ->(term=''){ where("teams.name like ?","%#{term}%")}

	def owned_by?(owner)
    return false unless owner.is_a? User
    user == owner
  end
	
end
