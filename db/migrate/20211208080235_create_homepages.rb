class CreateHomepages < ActiveRecord::Migration[5.2]
  def change
    create_table :homepages do |t|
      t.string :na

      t.timestamps
    end
  end
end
