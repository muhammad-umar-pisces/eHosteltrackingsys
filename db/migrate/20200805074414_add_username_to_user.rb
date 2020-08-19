class AddUsernameToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username_string, :string
  end
end
