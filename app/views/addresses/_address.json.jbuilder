json.extract! address, :id, :address1, :address2, :city, :state, :country, :postcode, :customer_id, :payment_id, :shipping_id, :created_at, :updated_at
json.url address_url(address, format: :json)
