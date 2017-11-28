class Province < ApplicationRecord
has_many :addresses
  validates :name, length: {in: 2..30}
  validates :gst, :pst, :hst, :qst, numericality: { greater_than_or_equal_to: 0 }

  def tax_rate
    return gst + pst + hst + qst
  end
end
