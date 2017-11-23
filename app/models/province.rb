class Province < ApplicationRecord
has_many :addresses
  def tax_rate
    return gst + pst + hst + qst
  end
end
