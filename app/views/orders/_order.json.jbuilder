json.extract! order, :id, :number, :total, :state, :gst, :pst, :hst, :qst, :payment, :memo, :created_at, :updated_at
json.url order_url(order, format: :json)
