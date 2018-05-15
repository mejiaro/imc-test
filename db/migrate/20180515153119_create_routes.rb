class CreateRoutes < ActiveRecord::Migration[5.1]
  def change
    create_table :routes do |t|
      t.references :origin
      t.references :destination
      t.references :freight_type, foreign_key: true
      t.integer :price

      t.timestamps
    end
  end
end
