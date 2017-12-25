class Article < ApplicationRecord
	belongs_to	:team, optional: true
	belongs_to	:competition, optional: true
	belongs_to	:result, optional: true
	has_many	:comment
end
