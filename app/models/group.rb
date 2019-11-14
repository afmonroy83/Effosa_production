class Group < ApplicationRecord
  mount_uploaders :attachments, ImageUploader
end
