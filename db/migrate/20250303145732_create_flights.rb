class CreateFlights < ActiveRecord::Migration[8.0]
  def change
    create_table :flights do |t|
      t.string :departs
      t.string :arrives
      t.date :date
      t.time :time
      t.integer :price

      t.timestamps
    end
  end
end
