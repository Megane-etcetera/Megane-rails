class CreatePrefectures < ActiveRecord::Migration[5.1]
  def change
    create_table :prefectures do |t|
      t.integer :region_id
      t.string :prefecture_name

      t.timestamps
    end
  end
end
