class AddBrandToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :offer, :string
    add_column :products, :category, :string
    add_column :products, :brand, :string
  end
end
