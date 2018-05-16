class AddFieldsToBookings < ActiveRecord::Migration[5.1]
  def change
    add_column :bookings, :status, :string
    add_index :bookings, :status
    add_column :bookings, :shipment_status, :string
    add_index :bookings, :shipment_status
  end
end
