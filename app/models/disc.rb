class Disc < ApplicationRecord
	belongs_to :product
	has_many :tracks
	accepts_nested_attributes_for :tracks, allow_destroy: true

end
