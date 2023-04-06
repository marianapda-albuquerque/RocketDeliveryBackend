class AddConstraintsToProdutos < ActiveRecord::Migration[7.0]
  def change
    change_column_null :products, :restaurant_id, false
    change_column_null :products, :name, false
    change_column_null :products, :cost, false
    add_check_constraint :products, "cost >= 0"
  end
end
