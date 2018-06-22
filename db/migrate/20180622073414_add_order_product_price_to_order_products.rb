class AddOrderProductPriceToOrderProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :order_products, :order_product_price, :integer
  end
end
