class CreateHostels < ActiveRecord::Migration[5.2]
  def change
    create_table :hostels do |t|
      t.string :hostel_name
      t.string :location
      t.integer :price

      t.timestamps
    end
  end
end
