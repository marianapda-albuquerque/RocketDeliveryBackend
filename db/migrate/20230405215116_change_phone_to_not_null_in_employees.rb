class ChangePhoneToNotNullInEmployees < ActiveRecord::Migration[7.0]
  def change
    change_column_null :employees, :phone, false
  end
end
