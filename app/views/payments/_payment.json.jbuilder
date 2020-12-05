json.extract! payment, :id, :pay_method, :card_number, :expiration_date, :card_code, :customer_id, :shipping_id, :order_id, :created_at, :updated_at
json.url payment_url(payment, format: :json)
