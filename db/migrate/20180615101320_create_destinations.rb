class CreateDestinations < ActiveRecord::Migration[5.1]
  def change
    create_table :destinations do |t|
      t.integer :user_id
      t.integer :prefecture_id
      t.string :address
      t.string :post_nember

      t.timestamps
    end
  end
end
