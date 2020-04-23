class AddUserIdToHostel < ActiveRecord::Migration[5.2]
  def change
    add_column :hostels, :user_id, :integer
  end
end
