class ProductsController < ApplicationController
  def search
  end

  def index
  end

  def show
  end

  def new
    @product = Product.new
  end

  def create
    product = Product.new(product_params)
    product.admin_id = current_admin.id
    book.save
    redirect_to new_disc_path
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
      params.requier(:product).permit(:admin_id, :product_title, :product_title_kana, :price,:genre_id, :label_id, :stock, :item_number, :image_id, :release_date)
    end
end