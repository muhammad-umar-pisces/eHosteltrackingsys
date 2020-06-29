class AddHostelNameToSearch < ActiveRecord::Migration[5.2]
  def change
    add_column :searches, :hostel_name, :string
  end
end
