class AddContactNumToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :contact_num, :string
  end
end
