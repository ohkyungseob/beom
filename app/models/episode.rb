class Episode < ApplicationRecord
  belongs_to :webtoon
	has_many :buys, dependent: :destroy
end
