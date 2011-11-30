class ConcertsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :find_band_by_id
  before_filter :find_concert_by_id, :only => [:edit, :destroy]

  def index
    @concerts = @band.concerts.all
    @concert ||= Concert.new
  end
  
  def create
    @concert = @band.concerts.build(params[:concert])
    
    respond_to do |format|
      if @concert.save
        format.html { redirect_to band_concerts_path }
        format.js
      else
        format.html { render :action => :index }
        format.js
      end
    end
  end

  def edit
    find_concert_by_id
    
    respond_to do |format|
     format.html {}
     format.js {}
    end
  end
  
  def update
    find_concert_by_id
    if @concert.update_attributes(params[:concert])
      redirect_to band_concerts_path(@band)
    else
      render 'edit'
    end
  end
  
  def destroy
    @concert = Concert.find(params[:id])
    @concert.destroy
    redirect_to band_concerts_path
  end
  
  protected
  
  def find_band_by_id
    @band = current_user.bands.find(params[:band_id])
  end
  
  def find_concert_by_id
    @concert = @band.concerts.find(params[:id])
  end

end
