class AddConstraintsToCustomers < ActiveRecord::Migration[7.0]
  def change
    remove_index :customers, :user_id
    add_index :customers, :user_id, unique: true, where: "user_id IS NOT NULL"
    change_column_null :customers, :address_id, false
    change_column_null :customers, :phone, false
    # change_column_null :customers, :active, false, default: true
  end
end
