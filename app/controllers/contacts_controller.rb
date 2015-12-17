class ContactsController < ApplicationController
  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash[:error] = nil
      flash[:notice] = "Thank you! A licensed contractor will contact you for your free rebate evaluation."
      redirect_to root_url
    else
      flash.now[:error] = "Message not sent. Please check for errors and submit again."
      render 'application/index'
    end
  end
end
