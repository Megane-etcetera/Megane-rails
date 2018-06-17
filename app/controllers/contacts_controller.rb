class ContactsController < ApplicationController
  def new
      @contact = Contact.new
      
  end

  def create
      @contact = Contact.new(contact_params)
      @contact.save
      redirect_to root_path
  end

  def index 
      @contact = Contact.all
  end

  def finished
  end

  def show
      @contact = Contact.find(params[:id])
  end

  def update
  end

private
    def contact_params
      params.require(:contact).permit(:category,:message)
    end
end
