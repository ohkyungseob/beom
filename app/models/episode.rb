class Episode < ApplicationRecord
  belongs_to :webtoon
	has_many :buys, dependent: :destroy
	has_many :comment2s, dependent: :destroy
end
