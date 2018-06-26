class RegionsController < ApplicationController
  def index
    @regions = Region.all
  end

  def edit
    @region = Region.find(params[:id])
  end

  def update
    region = Region.find(params[:id])
    region.update(region_params)
    redirect_to regions_path
  end

  private
    
  def region_params
    params.require(:region).permit(:region_name, :delivery_price)
  end

end
