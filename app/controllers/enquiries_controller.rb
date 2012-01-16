class EnquiriesController < ApplicationController

def index
  @title = "All Enquiries"  
  @enquiries = Enquiry.paginate(:page => params[:page])    
      
  end  

  def show
    @enquiry = Enquiry.find(params[:id])
    @title = @enquiry.enquirer_name
  end

  def new
    @enquiry = Enquiry.new
  end

  def create
    @enquiry = Enquiry.new(params[:enquiry])
    if @enquiry.save
    flash[:success] = "enquiry record saved!"
      redirect_to @enquiry
    else
      @title = "Capture Enquiry Details"
      render 'new'
    end
  end


  def destroy
    Enquiry.find(params[:id]).destroy
    flash[:success] = "enquiry Record Deleted."
    redirect_to enquiry_path
  end
end

