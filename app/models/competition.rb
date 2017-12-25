class Competition < ApplicationRecord
	has_many	:article
	has_many	:result
end
