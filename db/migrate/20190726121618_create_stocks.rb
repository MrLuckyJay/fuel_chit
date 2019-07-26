class CreateStocks < ActiveRecord::Migration[5.2]
  def change
    create_table :stocks do |t|
      t.string :fueltype
      t.integer :liters
      t.integer :totalliters
      t.references :User, foreign_key: true

      t.timestamps
    end
  end
end
