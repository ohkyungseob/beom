class Webtoon < ApplicationRecord
	has_many :episodes, dependent: :destroy
end
