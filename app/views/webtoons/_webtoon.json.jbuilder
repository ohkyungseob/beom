json.extract! webtoon, :id, :webtoonname, :author, :genre, :summary, :attentioncount, :day, :stardate, :agelimit, :created_at, :updated_at
json.url webtoon_url(webtoon, format: :json)
