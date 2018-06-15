class CreateTracks < ActiveRecord::Migration[5.1]
  def change
    create_table :tracks do |t|
      t.integer :disc_id
      t.string :track_title
      t.string :track_title_kana
      t.integer :track_number
      t.string :artist_name
      t.string :artist_name_kana

      t.timestamps
    end
  end
end
