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
<<<<<<< HEAD
      
      @admin =Admin.find(params[:id])
      
      @contacts = Contact.where(situations: params[:situations],situations: 2)

=======
      @contact = Contact.all
>>>>>>> a6f4a4c8b5075e52325cc5a62e2d52b42b9381b3
  end

  def show  

      @contact = Contact.find(params[:id])
     
  end

  def update
      @contact = Contact.find(params[:id])
<<<<<<< HEAD
      @contact.situations = params[:situations]
      @contact.update(contact_params)
      redirect_to admin_contacts_path
=======
      @contact.update(contact_params)
      redirect_to contacts_path
>>>>>>> a6f4a4c8b5075e52325cc5a62e2d52b42b9381b3
  end

private
    def contact_params
<<<<<<< HEAD
      params.require(:contact).permit(:category,:message,:admin_comment,:situations,:user_id)
=======
      params.require(:contact).permit(:category,:message,:admin_comment,:status)
>>>>>>> a6f4a4c8b5075e52325cc5a62e2d52b42b9381b3
    end
end
