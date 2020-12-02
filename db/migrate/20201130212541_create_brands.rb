class CreateBrands < ActiveRecord::Migration[5.0]
  def change
    create_table :brands do |t|
      t.string :brand_name
      t.text :description
      t.date :yearofestablishement

      t.timestamps
    end
  end
end
