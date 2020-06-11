class RemoveBoysHostelFromHostels < ActiveRecord::Migration[5.2]
  def change
    remove_column :hostels, :boys_hostel, :boolean
  end
end
