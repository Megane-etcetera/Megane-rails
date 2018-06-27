class RemoveProsuctIdFromOrderProducts < ActiveRecord::Migration[5.1]
  def change
    remove_column :order_products, :prosuct_id, :integer
  end
end
