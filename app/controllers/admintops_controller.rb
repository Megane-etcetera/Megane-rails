class AdmintopsController < ApplicationController
  def top
    @u_search = User.ransack(params[:q])
    @users = @u_search.result(distinct: true)
  end

  private
  
  def search_params
    params.require(:q).permit!
  end
end
