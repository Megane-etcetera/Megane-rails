class CreateRegions < ActiveRecord::Migration[5.1]
  def change
    create_table :regions do |t|
      t.string :region_name
      t.integer :delivery_price

      t.timestamps
    end
  end
end
