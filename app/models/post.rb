class Post < ApplicationRecord
  mount_uploaders :attachments, ImageUploader
  mount_uploader :image, ImageUploader
  validates :title, presence: true, length: {minimum: 2}
  validates :body, presence: true
  validates :image, file_size: { less_than: 100.megabytes }
end
