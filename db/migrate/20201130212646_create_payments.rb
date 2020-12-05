class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|
      t.string :pay_method
      t.string :card_number
      t.date :expiration_date
      t.integer :card_code
      t.references :customer, foreign_key: true
      t.references :shipping, foreign_key: true
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
