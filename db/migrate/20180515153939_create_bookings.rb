class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.references :customer, foreign_key: true
      t.references :route, foreign_key: true
      t.integer :cbm
      t.integer :price

      t.timestamps
    end
  end
end
