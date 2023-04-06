class AddNotNullConstraintToProductOrders < ActiveRecord::Migration[7.0]
  def change
    change_column_null :product_orders, :product_quantity, false
    change_column :product_orders, :product_quantity, :integer, default: 0, check: 'product_quantity > 0'
    change_column_null :product_orders, :product_unit_cost, false
    change_column :product_orders, :product_unit_cost, :integer, default: 0, check: 'product_unit_cost >= 0'
  end
end
