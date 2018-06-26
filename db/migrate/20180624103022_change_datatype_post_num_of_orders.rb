class ChangeDatatypePostNumOfOrders < ActiveRecord::Migration[5.1]
  def change
  	change_column :orders, :post_num, :string
  end
end
