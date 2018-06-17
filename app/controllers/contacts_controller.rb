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
      @contacts = Contact.where(situations: params[:situations],situations: "対応済み")
      binding.pry
  end

  def show
      @contact = Contact.find(params[:id])
  end

  def update
      @contact = Contact.find(params[:id])
      @contact.situations = params[:situationss][:name]
      @contact.update(contact_params)
      # binding.pry
      redirect_to contacts_path
  end

private
    def contact_params
      params.require(:contact).permit(:category,:message,:admin_comment,:situations)
    end
end
