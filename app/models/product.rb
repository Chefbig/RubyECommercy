class Product < ApplicationRecord
  has_many :images
  paginates_per 4
end
