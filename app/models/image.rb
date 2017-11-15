class Image < ApplicationRecord
  belongs_to :product
  mount_uploader :file_name, ImageUploader
end
