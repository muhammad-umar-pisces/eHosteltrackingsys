class RemoveUsernameStringFromUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :username_string, :string
  end
end
