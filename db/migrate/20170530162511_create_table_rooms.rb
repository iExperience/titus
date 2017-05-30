class CreateTableRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.string :name
      t.integer :size
      t.string :view
      t.text :amenities, array: true, default: []

      t.timestamps
    end
  end
end
