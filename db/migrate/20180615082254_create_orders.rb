class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.string :payment
      t.string :address
      t.integer :tax
      t.integer :delivery_price
      t.integer :payment_price
      t.integer :order_price

      t.timestamps
    end
  end
end
