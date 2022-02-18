class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.date :date
      t.integer :price
      t.integer :event_type
      t.integer :venue_id
      t.integer :user_id
      t.string :image

      t.timestamps
    end
  end
end
