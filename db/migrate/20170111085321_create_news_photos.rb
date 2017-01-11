class CreateNewsPhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :news_photos do |t|
      t.integer :new_id

      t.timestamps
    end
  end
end
