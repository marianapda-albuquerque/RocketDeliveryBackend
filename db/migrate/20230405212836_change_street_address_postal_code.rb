class ChangeStreetAddressPostalCode < ActiveRecord::Migration[7.0]
  def up
    change_column :addresses, :postal_code, :string, null: false
  end

  def down
    change_column :addresses, :postal_code, :string, default: nil, null: true
  end
end
