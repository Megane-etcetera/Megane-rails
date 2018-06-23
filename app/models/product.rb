class Product < ApplicationRecord
	attachment :image

	belongs_to :admin
	has_many :carts

	belongs_to :label
	belongs_to :genre

	has_many :discs

	has_many :reviews, dependent: :destroy
	has_many :users, :through => :reviews


[:product_title, :product_title_kana, :price,:genre_id, :label_id, :stock, :item_number, :image, :release_date].each do |v|
   validates v, presence: true
end
   validates :item_number ,uniqueness: true

end
