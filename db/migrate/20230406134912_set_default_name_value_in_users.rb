class SetDefaultNameValueInUsers < ActiveRecord::Migration[7.0]
  def change
    def up
      User.where(name: nil).update_all(name: "")
    end
    
    def down
      User.where(name: "").update_all(name: nil)
    end
  end
end
