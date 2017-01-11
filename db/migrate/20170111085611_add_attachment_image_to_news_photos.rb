class AddAttachmentImageToNewsPhotos < ActiveRecord::Migration
  def self.up
    change_table :news_photos do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :news_photos, :image
  end
end
