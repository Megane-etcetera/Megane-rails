class TopsController < ApplicationController
    def top
    @newproducts = Product.first(4)
    @products = Product.all.sort_by{|p| p.sales_total}.reverse
    end
end
