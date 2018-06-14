class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.integer :admin_id
      t.string :product_title
      t.string :product_title
      t.string :product_title_kana
      t.integer :price
      t.integer :genre_id
      t.integer :label_id
      t.integer :stock
      t.string :item_number
      t.text :image_id
      t.string :release_date
      t.timestamps
    end
  end
end
