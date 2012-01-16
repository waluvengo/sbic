class PublicationsController < ApplicationController

  def index
  @title = "All Publications"  
  @publications = Publication.paginate(:page => params[:page])    
      
  end  

  def show
    @publication = Publication.find(params[:id])
    @title = @publication.publication_name
  end

  def new
    @publication = Publication.new
  end

  def create
    @publication = Publication.new(params[:publication])
    if @publication.save
    flash[:success] = "publication record saved!"
      redirect_to @publication
    else
      @title = "Capture publication Details"
      render 'new'
    end
  end

  def edit
    @publication = Publication.find(params[:id])
    @title = "Edit publication"
  end

  def update
    if @publication.update_attributes(params[:publication])
      flash[:success] = "publication updated."
      redirect_to @publication
    else
      @title = "Edit publication"
      render 'edit'
    end
  end

  def destroy
    Publication.find(params[:id]).destroy
    flash[:success] = "publication Record Deleted."
    redirect_to publication_path
  end
end
