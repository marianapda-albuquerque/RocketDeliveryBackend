class ChangeStreetAddressNullInAddresses < ActiveRecord::Migration[7.0]
  def change
    change_column_null :addresses, :street_address, true
  end
end
