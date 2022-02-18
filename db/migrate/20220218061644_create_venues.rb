class CreateVenues < ActiveRecord::Migration[5.2]
  def change
    create_table :venues do |t|
      t.string :name
      t.string :address
      t.integer :seat_rows
      t.integer :seat_columns
      t.integer :standing_capacity
      t.float :longitude
      t.float :latitude
      t.string :image

      t.timestamps
    end
  end
end
