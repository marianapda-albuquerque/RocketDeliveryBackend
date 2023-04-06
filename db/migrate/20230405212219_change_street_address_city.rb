class ChangeStreetAddressCity < ActiveRecord::Migration[7.0]
  def up
    change_column :addresses, :city, :string, default: '', null: false
  end

  def down
    change_column :addresses, :city, :string, default: nil, null: true
  end
end
