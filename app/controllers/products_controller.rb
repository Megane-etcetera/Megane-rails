class ProductsController < ApplicationController
  before_action :authenticate_admin!, except: [:index, :search, :show, :genre]
 

  def index
    @q = Product.ransack(params[:q])
    @products = @q.result(distinct: true)
  end

  def genre
    @products = Product.where(genre_id: params[:id])
  end

  def stock
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    @average = Review.where(product_id: @product.id).average(:star)
    @discs = @product.discs
    @artists = @discs.joins(:tracks).pluck(:artist_name).uniq
    # 備忘録
    # .joins(:tracks)　⇒　Discテーブル（今回は@discs）とTrackテーブルでidが重なってる物を合体
    # .pluck(:artist_name)　⇒　artist_nameというカラムを配列にする
    # .uniq ⇒　配列内の重複している要素を一つにする
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
    @product = Product.find(params[:id])
    @discs = @product.discs
  end

  def update
    @product = Product.find(params[:id])
    @product.update(product_params)
    redirect_to products_path
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    redirect_to products_path
  end

  def ranking
  end

  private
    def product_params
      params.require(:product).permit( :admin_id, :product_title, :product_title_kana, :price,:genre_id, :label_id, :stock, :item_number, :image, :release_date)
    end

    def search_params
      params.require(:q).permit!
    end
end