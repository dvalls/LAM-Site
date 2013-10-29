class ContactsController < ApplicationController

  before_action :set_contact, only: [:show, :edit, :update]

  def show
  end

  def edit
  end


  def update
    if @contact.update(contact_params)
      redirect_to { action 'index' }
    end
  end

  private
  def set_contact
    @contact = Contact.first_or_create!
  end

  def contact_params
    params.require(:contact).permit(:body)
  end


end
