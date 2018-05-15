class CreateFreightTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :freight_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
