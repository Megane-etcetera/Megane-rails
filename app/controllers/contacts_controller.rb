class ContactsController < ApplicationController
  def new
      @user = User.find(params[:user_id])
      @contact = Contact.new

  end

  def create
      @contact = Contact.new(contact_params)
      @contact.user_id = current_user.id
      @contact.save
      redirect_to root_path
      
  end

  def index 

      
      @contact = Contact.where(situations: params[:situations],situations: 0)
      @contacts = Contact.where(situations: params[:situations],situations: 1)
      
  end

  def finished

      @contact = Contact.where(situations: params[:situations],situations: 2)
      
  end

  def edit

      @contact = Contact.find(params[:id])
     
  end

  def update
      @contact = Contact.find(params[:id])
      @contact.situations = params[:situations]
      @contact.update(contact_params)
      redirect_to contacts_path


  end

private
    def contact_params

      params.require(:contact).permit(:category,:message,:admin_comment,:situations,:user_id)

    end
end
