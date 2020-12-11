class Item < ApplicationRecord

    validates_presence_of :title, :message => 'Please Enter a Title'
    validates :title, length: {minimum: 5}

    validates_presence_of :description, :message => 'Please Enter a Description'
    validates :description, length: {minimum: 10}

    validates_presence_of :price, :message => 'Please a Price'
    validates :price, length: {minimum: 2}

    validates_presence_of :category, :message => 'Please Enter a Category'
    validates :category, length: {minimum: 3}

    validates_presence_of :brand, :message => 'Please Enter a Brand'
    validates :brand, length: {minimum: 3}

end

# :price, :image_url, :category, :brand
