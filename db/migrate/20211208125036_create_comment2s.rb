class CreateComment2s < ActiveRecord::Migration[5.2]
  def change
    create_table :comment2s do |t|
      t.references :episode, foreign_key: true
      t.references :user, foreign_key: true
      t.text :usercomment2

      t.timestamps
    end
  end
end

rails g scaffold comment2 usercomment2:text episode:references user:references

