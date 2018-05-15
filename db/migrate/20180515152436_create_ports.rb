class CreatePorts < ActiveRecord::Migration[5.1]
  def change
    create_table :ports do |t|
      t.string :name
      t.decimal :lat, precision: 10, scale: 6 
      t.decimal :lng, precision: 10, scale: 6 

      t.timestamps
    end
  end
end
