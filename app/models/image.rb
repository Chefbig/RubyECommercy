class Image < ApplicationRecord
  belongs_to :product
  mount_uploader :file_name, ImageUploader
  validates :file_name, presence: true
  validates :name, :description, length: {in: 2..30}
end
