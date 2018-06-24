class AddPostNumToOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :post_num, :integer
  end
end
