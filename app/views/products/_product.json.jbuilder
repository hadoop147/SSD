json.extract! product, :id, :prod_name, :description, :stock_quantity, :prod_gender, :prod_price, :prod_size, :colours, :image_url, :offer_id, :category_id, :brand_id, :created_at, :updated_at
json.url product_url(product, format: :json)
