class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :country
      t.string :postcode
      t.references :customer, foreign_key: true
      t.references :payment, foreign_key: true
      t.references :shipping, foreign_key: true

      t.timestamps
    end
  end
end
