class CreateShippings < ActiveRecord::Migration[5.0]
  def change
    create_table :shippings do |t|
      t.date :date_shipped
      t.references :customer, foreign_key: true
      t.references :address, foreign_key: true
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
