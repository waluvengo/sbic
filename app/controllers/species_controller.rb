class SpeciesController < ApplicationController
  
  def index
  @title = "All species"  
  @species = Species.paginate(:page => params[:page])    
      
  end  

  def show
    @species = Species.find(params[:id])
    @title = @species.species_name
  end

  def new
    @species = Species.new
  end

  def create
    @species = Species.new(params[:species])
    if @species.save
    flash[:success] = "Species record saved!"
      redirect_to @species
    else
      @title = "Capture Species Details"
      render 'new'
    end
  end

  def edit
    @species = Species.find(params[:id])
    @title = "Edit species"
  end

  def update
    if @species.update_attributes(params[:species])
      flash[:success] = "species updated."
      redirect_to @species
    else
      @title = "Edit species"
      render 'edit'
    end
  end

  def destroy
    Species.find(params[:id]).destroy
    flash[:success] = "Species Record Deleted."
    redirect_to species_path
  end
end
