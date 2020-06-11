class AddHostelTypeToHostels < ActiveRecord::Migration[5.2]
  def change
    add_column :hostels, :hostel_type, :string
  end
end
