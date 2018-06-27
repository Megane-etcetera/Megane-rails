class ChangeDatatypeSalesTotal < ActiveRecord::Migration[5.1]
  def change
  	change_column :products, :sales_total, :integer, default: 0
  end
end
