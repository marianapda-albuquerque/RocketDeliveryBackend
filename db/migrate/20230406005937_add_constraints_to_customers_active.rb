class AddConstraintsToCustomersActive < ActiveRecord::Migration[7.0]
  def change
    change_column_null :customers, :active, false
    change_column_default :customers, :active, true
  end
end
