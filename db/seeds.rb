# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "csv"

CSV.foreach('db/label.csv') do |row|
  Label.create(:label => row[0])
end

CSV.foreach('db/product.csv') do |row|
  Product.create(:admin_id => row[0], :product_title => row[1], :product_title_kana => row[2], :item_number => row[3], :price => row[4], :genre_id => row[5], :label_id => row[6], :release_date => row[7], :stock => row[8])
end

10.times do |no|
  Product.create(:admin_id => 1, :product_title => "J-pop仮商品#{no}", :stock => 0, :genre_id => 2, :label_id => 3)
  Product.create(:admin_id => 1, :product_title => "洋楽仮商品#{no}", :stock => 10, :genre_id => 6, :label_id => 16)
end