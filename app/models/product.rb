class Product < ApplicationRecord
  has_many :images
  has_many :product_categories
  has_many :categories, :through => :product_categories
  paginates_per 4
end
