class Product < ApplicationRecord
	attachment :image

	belongs_to :admin

	has_many :reviews, dependent: :destroy
end

