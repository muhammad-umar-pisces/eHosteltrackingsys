class AddDescriptionToHostel < ActiveRecord::Migration[5.2]
  def change
    add_column :hostels, :description, :text
  end
end
