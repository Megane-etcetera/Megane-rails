class CreateRecommends < ActiveRecord::Migration[5.1]
  def change
    create_table :recommends do |t|
      t.integer :product_id

      t.timestamps
    end
  end
end
