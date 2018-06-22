class RemoveOrderProductPriceFromOrderProduct < ActiveRecord::Migration[5.1]
  def change
    remove_column :order_products, :OrderProduct_price, :integer
  end
end
