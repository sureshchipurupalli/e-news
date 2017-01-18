class News < ApplicationRecord
has_many :news_photos
belongs_to :user
end
