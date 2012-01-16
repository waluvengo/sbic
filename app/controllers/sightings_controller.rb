class SightingsController < ApplicationController
  def index
    @title = "All Sightings"
    @sightings = Sighting.paginate(:page => params[:page])
  end

  def new
    @sighting = Sighting.new
    @title = "Submit Sighting"
  end

  def show
    @sighting = Sighting.find(params[:id])
    @title = @sighting.species_name
  end

  def create
    @sighting = Sighting.new(params[:sighting])
    if @sighting.save
    flash[:success] = "Sighting record saved!"
      redirect_to @sighting
    else
      @title = "Capture Sighting Details"
      render 'new'
    end
  end

  def destroy
    Sighting.find(params[:id]).destroy
    flash[:success] = "Species Record Deleted."
    redirect_to species_path
  end

end
