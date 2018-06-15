class Product < ApplicationRecord
	attachment :image

	belongs_to :admin

	belongs_to :label
	belongs_to :genre
end

