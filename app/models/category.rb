class Category < ApplicationRecord
  has_many :product_categories
  has_many :product, :through => :product_categories

  validates :name, length:{in: 2..20}
end
