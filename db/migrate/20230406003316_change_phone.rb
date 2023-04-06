class ChangePhone < ActiveRecord::Migration[7.0]
    def change
      change_column_null :restaurants, :phone, false
    end
end
