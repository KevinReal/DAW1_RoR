class Article < ApplicationRecord
	mount_uploader :foto, FotoUploader
	belongs_to	:team, optional: true
	belongs_to	:competition, optional: true
	belongs_to	:result, optional: true
	belongs_to :user, optional: true
	has_many	:comments, dependent: :nullify
	validates :author, :body, :title, :subtitle, :published_at, presence: {message: "el campo no puede quedar vacío"}
	validates :title, uniqueness: {case_sensitive: false, message: 'El titular debe ser único'}, length: {in: 6..30, too_short: "debe tener al menos %{count} caracteres", too_long: "debe tener como mucho mucho %{count} caracteres"}
	default_scope -> {order('published_at DESC')}

	scope :published, ->{where("articles.published_at IS NOT NULL")}
  	scope :draft, ->{where("articles.published_at IS NULL")}
  	scope :recent, ->{published.where("articles.published_at > ?", 2.years.ago).limit(4)}
  
  	scope :con_titulo, ->(term=''){ where("articles.title like ?","%#{term}%")}

  	scope :of_competition, ->(term=''){ where("articles.competition_id = ?", Competition.con_name(term).ids)}

  	
  	#scope :of_competition, ->(term=''){ joins(:competition).where('competition.name = ?',  term) }

  	#scope :of_competition, ->(term='') { includes(:competition).where('competition.id = ?', term) }

  	#Article.joins(:competition).where('competition.name' => ?, "%#{term}%")

  #	def of_competition(term)
  #		joins(:competition).where('competition.name' => term)
  #	end

  	def owned_by?(owner)
    	return false unless owner.is_a? User
    	user == owner
  	end
end
