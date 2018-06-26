class ReviewsController < ApplicationController
  before_action :abc, only:[:create]
  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    @review.product_id = params[:product_id]
    if @review.save
      # 保存できたら商品詳細ページに戻って欲しいが、パスがわからん
      redirect_to product_path(@review.product_id)
    else
      redirect_to root_path
    end
  end

  def edit
    @product = Product.find(params[:product_id])
    @review = Review.find(params[:id])
    if @review.user != current_user
      redirect_to product_path(@review.product_id), notice:'＜error＞投稿者以外は編集することができません'      
    end
  end

  def update
    review = Review.find(params[:id])
    review.update(review_params)
    redirect_to product_path(review.product_id)
    end

  def destroy
    review = Review.find(params[:id])
    review.destroy
    redirect_to product_path(review.product_id)
  end

  private
    def review_params
      params.require(:review).permit(:user_id, :product_id, :review_title, :review_message, :star)
    end
    #同一ユーザーによる同一商品に対する複数レビュー投稿禁止の為のbeforeaction#
    def abc
      if Review.find_by(user_id: current_user.id,product_id: params[:product_id]).nil?
      else
        redirect_to product_path(params[:product_id])
      end
    end
end
