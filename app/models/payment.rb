class Payment < ApplicationRecord
  belongs_to :customer
  belongs_to :shipping
  belongs_to :order
end
