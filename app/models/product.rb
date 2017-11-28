class Product < ApplicationRecord
  has_many :images
  has_many :product_categories
  has_many :categories, :through => :product_categories

  validates :name, :description, :stock_quantity, :price, presence: true
  validates :name, :description, length: {in: 2..30}
  validates :price,  numericality: { greater_than: 0 }
  validates :stock_quantity, numericality: { only_integer: true }

  paginates_per 4

end
