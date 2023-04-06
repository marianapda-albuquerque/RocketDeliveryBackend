class AddUniqueAndNotNullConstraintToUserIdInEmployees < ActiveRecord::Migration[7.0]
  def change
    remove_index :employees, :user_id
    add_index :employees, :user_id, unique: true, where: "user_id IS NOT NULL"
  end  
end
