class Product < ApplicationRecord
	attachment :image

	belongs_to :admin

end

