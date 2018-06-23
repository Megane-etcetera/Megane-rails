class Track < ApplicationRecord
	belongs_to :disc
	[:track_title, :track_title_kana, :track_number,:artist_name,:artist_name_kana ].each do |v|
		validates v, presence: true
	end
	
end
