class Address < ApplicationRecord
  belongs_to :customer
  belongs_to :payment
  belongs_to :shipping
end
