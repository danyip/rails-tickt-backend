class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.integer :event_id
      t.integer :user_id
      t.integer :seat_row
      t.integer :seat_column

      t.timestamps
    end
  end
end
