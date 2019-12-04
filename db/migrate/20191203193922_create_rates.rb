class CreateRates < ActiveRecord::Migration[6.0]
  def change
    create_table :rates do |t|
      t.string :origin
      t.string :destination
      t.integer :basic
      t.integer :advance
      t.integer :premium
      t.integer :insurance
      t.references :vendor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
