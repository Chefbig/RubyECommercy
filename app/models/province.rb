class Province < ApplicationRecord

  def tax_rate
    return gst + pst + hst + qst
  end
end
