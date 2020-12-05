json.extract! customer, :id, :fname, :lname, :phonenumber, :date_of_birth, :user_id, :created_at, :updated_at
json.url customer_url(customer, format: :json)
