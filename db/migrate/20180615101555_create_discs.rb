class CreateDiscs < ActiveRecord::Migration[5.1]
  def change
    create_table :discs do |t|
      t.integer :product_id
      t.string :disc_type
      t.integer :disc_number

      t.timestamps
    end
  end
end
