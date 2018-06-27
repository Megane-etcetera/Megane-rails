class AddSalesTotalToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :sales_total, :integer
  end
end
