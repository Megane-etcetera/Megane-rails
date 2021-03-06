class ApplicationController < ActionController::Base
	#protect_from_forgery with: :exception
	before_action :set_search
	# ヘッダーに検索フォームを置くために、何をするにも検索フォーム用の変数を持つように
	
	before_action :set_carts_view



	def after_sign_in_path_for(resource)

	  case resource
      when User
				# new_destination_path
				root_path
      when Admin
        admintops_top_path
      end
	end
	
	def after_sign_out_path_for(resource)
	 	root_path
	end

		
	before_action :configure_permitted_parameters, if: :devise_controller?

	

	protected
	def configure_permitted_parameters
			devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
			devise_parameter_sanitizer.permit(:sign_up, keys: [:kana])
			devise_parameter_sanitizer.permit(:sign_up, keys: [:tell])
			devise_parameter_sanitizer.permit(:sign_up, keys: [:post_number])
			devise_parameter_sanitizer.permit(:sign_up, keys: [:address])
	end

	private
	# 検索フォーム用の変数
	def set_search		
    @q = Product.search(params[:q])
		@products = @q.result(distinct: true)
	end

	def set_carts_view
		if user_signed_in?
			@mycarts = current_user.carts.all
			@carts_total_quantity = @mycarts.sum(:quantity)
			@carts_total_price = 0
			@mycarts.each do |cart|
				cartprice = cart.quantity * cart.sub_total
				@carts_total_price += cartprice
			end
		end
	end

end
