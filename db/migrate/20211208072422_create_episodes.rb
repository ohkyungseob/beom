class CreateEpisodes < ActiveRecord::Migration[5.2]
  def change
    create_table :episodes do |t|
      t.integer :round
      t.integer :cookiecount
      t.string :registration
      t.text :content
      t.integer :scope
      t.references :webtoon, foreign_key: true

      t.timestamps
    end
  end
end
