class CreateVendors < ActiveRecord::Migration[6.0]
  def change
    create_table :vendors do |t|
      t.string :name
      t.string :email
      t.string :release
      t.integer :delivered_orders
      t.integer :failed_orders
      t.integer :deal
      t.integer :discount
      t.integer :sla
      t.integer :penalty
      t.integer :balance_payment
      t.integer :actual_payment

      t.timestamps
    end
  end
end
