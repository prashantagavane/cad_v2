class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :origin
      t.string :destination
      t.string :plan
      t.string :insurance
      t.string :status
      t.references :vendor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
