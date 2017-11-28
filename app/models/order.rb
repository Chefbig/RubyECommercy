class Order < ApplicationRecord
  has_many :line_items
  belongs_to :user
  belongs_to :province

  validates :total, :state, :gst, :pst, :hst, :qst, :payment, presence: true
  validates :total, :gst, :pst, :hst, :qst, :payment,  numericality: { greater_than_or_equal_to: 0 }

end
