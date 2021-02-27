class ContactsController < ApplicationController
  def index

  end

  def new
    @contact = Contact.new

  end

  def create
    @contact = Contact.create(name: params[:contact][:name], email: params[:contact][:email], content: params[:contact][:content])
    if @contact.save
      redirect_to "/contacts/new", notice: "お問い合わせを受け付けました"
    else
      render :new
    end
    # redirect_to
  end
end
