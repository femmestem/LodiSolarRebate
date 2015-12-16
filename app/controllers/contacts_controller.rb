class ContactsController < ApplicationController
  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:error] = nil
      flash.now[:notice] = "Thank you! A licensed contractor will contact you for your free rebate evaluation."
      redirect_to '/'
    else
      flash.now[:error] = "Cannot send message."
      render :new
    end
  end
end
