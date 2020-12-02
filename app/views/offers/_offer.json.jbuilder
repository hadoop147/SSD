json.extract! offer, :id, :offertype, :description, :pricereduction, :created_at, :updated_at
json.url offer_url(offer, format: :json)
