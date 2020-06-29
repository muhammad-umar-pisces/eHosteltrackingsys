class AddHostelTypeToSearch < ActiveRecord::Migration[5.2]
  def change
    add_column :searches, :hostel_type, :string
  end
end
