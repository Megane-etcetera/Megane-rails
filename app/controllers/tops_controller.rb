class TopsController < ApplicationController
    def top
    @newproducts = Product.first(4)
    end
end
