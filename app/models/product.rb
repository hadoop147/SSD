class Product < ApplicationRecord


    validates_presence_of :prod_name, :message => 'Please Enter a product name'
    validates :prod_name, length: {minimum: 5}

    validates_presence_of :description, :message => 'Please Enter a Description'
    validates :description, length: {minimum: 10}

    validates_presence_of :prod_gender, :message => 'Please Enter a Category'
    validates :prod_gender, length: {minimum: 3}

    validates_presence_of :prod_price, :message => 'Please a Price'
    validates :prod_price, length: {minimum: 2}

    validates_presence_of :prod_size, :message => 'Please Enter a Brand'
    validates :prod_size, length: {minimum: 2}

    validates_presence_of :colours, :message => 'Please a Price'
    validates :colours, length: {minimum: 2}
    validates_presence_of :offer, :message => 'Please Enter a Brand'
    validates :offer, length: {minimum: 3}

    validates_presence_of :category, :message => 'Please Enter a Category'
    validates :category, length: {minimum: 3}

    validates_presence_of :brand, :message => 'Please Enter a Brand'
    validates :brand, length: {minimum: 3}

end
