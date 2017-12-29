class Article < ApplicationRecord
	mount_uploader :foto, FotoUploader 
	belongs_to	:team, optional: true
	belongs_to	:competition, optional: true
	belongs_to	:result, optional: true
	has_many	:comments, dependent: :nullify
	validates :author, :body, :title, :subtitle, :published_at, presence: {message: "el campo no puede quedar vacío"}
	validates :title, uniqueness: {case_sensitive: false, message: 'El titular debe ser único'}, length: {in: 6..30, too_short: "debe tener al menos %{count} caracteres", too_long: "debe tener como mucho mucho %{count} caracteres"}
	default_scope -> {order('lower(author) ASC')}

	scope :published, ->{where("articles.published_at IS NOT NULL")}
  scope :draft, ->{where("articles.published_at IS NULL")}
  scope :recent, ->{published.where("articles.published_at > ?", 2.years.ago).limit(1)}
  
  scope :con_titulo, ->(term=''){ where("articles.title like ?","%#{term}%")}
  
  def owned_by?(owner)
    return false unless owner.is_a? User
    user == owner
  end
end
