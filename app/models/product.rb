class Product < ApplicationRecord
  has_many :productcategories
  has_many :categories, :through => :productcategories
  has_many :images
  paginates_per 4
end
