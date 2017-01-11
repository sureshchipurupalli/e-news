class ChangeNewIsInNewsPhotos < ActiveRecord::Migration[5.0]
  def change
   rename_column :news_photos , :new_id, :news_id
  end
end
