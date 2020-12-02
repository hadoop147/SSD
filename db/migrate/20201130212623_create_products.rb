class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :prod_name
      t.text :description
      t.integer :stock_quantity
      t.string :prod_gender
      t.decimal :prod_price
      t.decimal :prod_size
      t.string :colours
      t.string :image_url
      t.references :offer, foreign_key: true
      t.references :category, foreign_key: true
      t.references :brand, foreign_key: true

      t.timestamps
    end
  end
end
