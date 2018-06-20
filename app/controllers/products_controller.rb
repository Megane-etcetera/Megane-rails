class ProductsController < ApplicationController
  def search
  end

  def index
    @product = Product.all
  end

  def show
    @product = Product.find(params[:id])
    @average = Review.where(product_id: @product.id).average(:star)
    @disc = @product.discs
    @review = Review.new
    @reviews = Review.where(product_id: @product.id)
  end

  def new
    @product = Product.new
  end

  def create
    product = Product.new(product_params)
    product.admin_id = current_admin.id
    product.save
    redirect_to new_product_disc_path(product)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def ranking
  end

  private
    def product_params
      params.require(:product).permit(:admin_id, :product_title, :product_title_kana, :price,:genre_id, :label_id, :stock, :item_number, :image, :release_date)
    end
end