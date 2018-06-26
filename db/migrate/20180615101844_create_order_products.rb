class CreateOrderProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :order_products do |t|
      t.integer :order_id
      t.integer :prosuct_id
      t.integer :quantity
      t.integer :OrderProduct_price
      t.string :status

      t.timestamps
    end
  end
end
