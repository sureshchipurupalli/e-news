class NewsPhoto < ApplicationRecord
	belongs_to :news

	has_attached_file :image, styles: { medium: "229x319>", thumb: "100x100>" }
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
