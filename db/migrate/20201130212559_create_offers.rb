class CreateOffers < ActiveRecord::Migration[5.0]
  def change
    create_table :offers do |t|
      t.string :offertype
      t.text :description
      t.decimal :pricereduction

      t.timestamps
    end
  end
end
