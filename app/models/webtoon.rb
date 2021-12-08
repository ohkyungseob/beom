class Webtoon < ApplicationRecord
	has_many :episodes, dependent: :destroy
	has_many :buys, dependent: :destroy
end
