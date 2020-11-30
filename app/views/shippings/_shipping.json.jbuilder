json.extract! shipping, :id, :date_shipped, :customer_id, :address_id, :order_id, :created_at, :updated_at
json.url shipping_url(shipping, format: :json)
