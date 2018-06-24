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
      @admin =Admin.find(params[:admin_id])
      
      @contact = Contact.where(situations: params[:situations],situations: 0)
      @contacts = Contact.where(situations: params[:situations],situations: 1)
      
      
      
  end

  def finished
      @admin = Admin.find(params[:id])
      @contact = Contact.where(situations: params[:situations],situations: 2)


      

  end

  def show  

      @contact = Contact.find(params[:id])
     
  end

  def update
      @contact = Contact.find(params[:id])
      @admin =Admin.find(params[:admin_id])
      @contact.situations = params[:situations]
      @contact.update(contact_params)
      binding.pry
      redirect_to admin_contacts_path(@admin)

     

  end

private
    def contact_params

      params.require(:contact).permit(:category,:message,:admin_comment,:situations,:user_id)

    end
end
