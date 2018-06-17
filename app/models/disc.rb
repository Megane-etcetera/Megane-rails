class Disc < ApplicationRecord
	belongs_to :product
	
	has_many :tracks, inverse_of: :disc
	accepts_nested_attributes_for :tracks
end
