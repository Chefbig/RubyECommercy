class LineItem < ApplicationRecord
  belongs_to :order
  validates :quantity, :price, presence: true
  validates :quantity, :price, numericality: { greater_than_or_equal_to: 0 }
  validates :quantity, numericality: { only_integer: true }
end
