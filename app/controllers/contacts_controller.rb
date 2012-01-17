class ContactsController < ApplicationController
  
  def index
    @title = "All contacts"  
    @contacts = Contact.paginate(:page => params[:page])    
      
  end  

  def show
    @contact = Contact.find(params[:id])
    @title = @contact.name
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    if @contact.save
    flash[:success] = "contact record saved!"
      redirect_to @contact
    else
      @title = "Capture Contact Details"
      render 'new'
    end
  end


  def destroy
    Contact.find(params[:id]).destroy
    flash[:success] = "contact Record Deleted."
    redirect_to contacts_path
  end
end
