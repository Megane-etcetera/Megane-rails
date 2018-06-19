class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    @review.product_id = params[:product_id]
    if @review.save
      # 保存できたら商品詳細ページに戻って欲しいが、パスがわからん
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def review_params
      params.require(:review).permit(:user_id, :product_id, :review_title, :review_message, :star)
    end


end
