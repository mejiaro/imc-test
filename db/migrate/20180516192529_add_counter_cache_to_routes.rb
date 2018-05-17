class AddCounterCacheToRoutes < ActiveRecord::Migration[5.1]
  def change
    add_column :routes, :bookings_count, :integer
  end
end
