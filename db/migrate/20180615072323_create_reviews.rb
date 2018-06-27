class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :product_id
      t.string :review_title
      t.text :review_message
      t.integer :star

      t.timestamps
    end
  end
end
