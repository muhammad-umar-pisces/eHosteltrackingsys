class CreateSearches < ActiveRecord::Migration[5.2]
  def change
    create_table :searches do |t|
      t.string :name
      t.string :location
      t.decimal :min_price
      t.decimal :max_price
      t.string :type

      t.timestamps
    end
  end
end
