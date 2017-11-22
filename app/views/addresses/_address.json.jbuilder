json.extract! address, :id, :firstname, :lastname, :phone, :addressline1, :addressline2, :city, :postalcode, :is_billing_address, :is_shipping_address, :created_at, :updated_at
json.url address_url(address, format: :json)
