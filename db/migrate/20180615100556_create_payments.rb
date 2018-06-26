class CreatePayments < ActiveRecord::Migration[5.1]
  def change
    create_table :payments do |t|
      t.string :payment
      t.integer :payment_price

      t.timestamps
    end
  end
end
