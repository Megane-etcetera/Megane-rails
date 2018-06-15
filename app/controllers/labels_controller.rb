class LabelsController < ApplicationController
  def index
<<<<<<< HEAD
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
=======
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
>>>>>>> 242015dbcfb18600eaae9bd97660c8c862d61a61
end
