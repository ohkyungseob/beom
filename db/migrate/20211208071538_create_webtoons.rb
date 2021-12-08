class CreateWebtoons < ActiveRecord::Migration[5.2]
  def change
    create_table :webtoons do |t|
      t.string :webtoonname
      t.string :author
      t.string :genre
      t.text :summary
      t.integer :attentioncount
      t.string :day
      t.string :stardate
      t.integer :agelimit

      t.timestamps
    end
  end
end
