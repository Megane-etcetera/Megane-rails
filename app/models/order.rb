class Order < ApplicationRecord
    belongs_to :user
    belongs_to :payment
    has_many :order_products
end
