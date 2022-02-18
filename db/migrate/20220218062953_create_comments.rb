class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :text
      t.integer :event_id
      t.integer :user_id

      t.timestamps
    end
  end
end
