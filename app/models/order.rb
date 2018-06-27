class Order < ApplicationRecord
    belongs_to :user
    has_many :order_products
    has_many :products , :through => :order_products

    validates :post_num,presence:true
    validates :address,presence:true
end
