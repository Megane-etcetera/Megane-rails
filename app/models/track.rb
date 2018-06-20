class Track < ApplicationRecord
	belongs_to :disc
	# belongs_to :disc, inverse_of: :tracks
end
