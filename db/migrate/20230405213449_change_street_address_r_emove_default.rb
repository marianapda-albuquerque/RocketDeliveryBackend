class ChangeStreetAddressREmoveDefault < ActiveRecord::Migration[7.0]
  def up
    change_column :addresses, :street_address, :string, null: false
    change_column :addresses, :city, :string, null: false
  end

  def down
    change_column :addresses, :street_address, :string, default: '', null: false
    change_column :addresses, :city, :string, default: '', null: false
  end
end
