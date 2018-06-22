class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   has_many :reviews, dependent: :destroy 
   has_many :products, :through => :reviews
   has_many :contacts
   has_many :destinations
   has_many :orders
   has_many :carts

   [:name, :kana, :post_number,:address,:tell ].each do |v|
   validates v, presence: true
end
   validates :tell ,length: {in: 10..11}
  #  ネスト
   accepts_nested_attributes_for :destinations

end
