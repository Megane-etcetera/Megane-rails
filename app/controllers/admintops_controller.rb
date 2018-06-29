class AdmintopsController < ApplicationController
  def top
  	if user_signed_in?
  		redirect_to root_path
  	else
    @u_search = User.ransack(params[:q])
    @users = @u_search.result(distinct: true)
  end
end
  private
  
  def search_params
    params.require(:q).permit!
  end
end
