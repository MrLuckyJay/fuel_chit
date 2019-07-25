class CreateFuelTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :fuel_types do |t|
      t.string :fuelname
      t.integer :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
