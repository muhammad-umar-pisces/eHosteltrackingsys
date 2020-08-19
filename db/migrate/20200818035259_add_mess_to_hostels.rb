class AddMessToHostels < ActiveRecord::Migration[5.2]
  def change
    add_column :hostels, :mess, :string
  end
end
