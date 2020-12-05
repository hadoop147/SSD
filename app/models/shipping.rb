class Shipping < ApplicationRecord
  belongs_to :customer
  belongs_to :address
  belongs_to :order
end
