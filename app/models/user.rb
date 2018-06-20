class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


   has_many :reviews, dependent: :destroy 
   has_many :contacts
   has_many :destinations
  #  ネスト
   accepts_nested_attributes_for :destinations

end
