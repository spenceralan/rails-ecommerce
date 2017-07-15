class UpdateDecimal < ActiveRecord::Migration[5.0]
  def change
    remove_column :products, :price
    add_column :products, :price, :decimal, precision: 12, scale: 2
    remove_column :orders, :total_price
    add_column :orders, :total_price, :decimal, precision: 12, scale: 2
  end
end
