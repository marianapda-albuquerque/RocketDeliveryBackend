class AddUniqueConstraintToUserIdInEmployee < ActiveRecord::Migration[7.0]
  def change
    add_index :employees, :user_id, unique: true
  end
end
