class ChangeStreetAddressProperties < ActiveRecord::Migration[7.0]
  def up
    change_column :addresses, :street_address, :string, default: '', null: false
  end

  def down
    change_column :addresses, :street_address, :string, default: nil, null: true
  end
end
