class ChangePhoneToNotNullInRestaurantsChanges < ActiveRecord::Migration[7.0]
  def change
    change_column_null :restaurants, :phone, false
    change_column_null :restaurants, :name, false
    change_column_null :restaurants, :price_range, false
    change_column_null :restaurants, :active, false
  end
end
