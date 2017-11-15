class Category < ApplicationRecord
  has_many :productcategories
  has_many :product, :through => :productcategories
end
