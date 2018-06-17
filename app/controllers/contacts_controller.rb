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
      @contact = Contact.all
  end

  def show
      @contact = Contact.find(params[:id])
     
  end

  def update
      @contact = Contact.find(params[:id])
      @contact.update(contact_params)
      redirect_to contacts_path
  end

private
    def contact_params
      params.require(:contact).permit(:category,:message,:admin_comment,:status)
    end
end
