class ChangeNotNull < ActiveRecord::Migration[7.0]
  def change
    change_column_null :restaurants, :name, false
    change_column_null :restaurants, :price_range, false
    change_column_default :restaurants, :price_range, 1
    change_column_null :restaurants, :active, false
    change_column_default :restaurants, :active, true
  end
end
