class LabelsController < ApplicationController

  before_action :authenticate_admin!
  
  def index
    if admin_signed_in?
    else redirect_to root_path
    end
  	@label = Label.new
  	@labels = Label.all
  end

  def create
  	label = Label.new(label_params)
  	label.save
  	redirect_to labels_path
  end

  def destroy
  	label = Label.find(params[:id])
    label.destroy
    redirect_to labels_path
  end
  private
 
    def label_params
        params.require(:label).permit(:label)
    end

end
