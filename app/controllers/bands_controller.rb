class BandsController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    if params[:first_band].present?
     redirect_to band_path(current_user.bands.first) and return
    end
  end
  
  def new
    @band = Band.new
    
    respond_to do |format|
     format.html {render :layout => "devise_registrations"}
     format.js {}
    end
  end
  
  def create
    @band = current_user.bands.build(params[:band])
    #@band = Band.new(params[:band])
    if @band.save
      redirect_to @band, :flash => { :success => "Band Created!" }
    else
      render 'new'
    end
  end

  def show
    @band = current_user.bands.find(params[:id])
  end

  def edit
    @band = current_user.bands.find(params[:id])
  end
  
  def destroy
    @band = Band.find(params[:id])
    @band.destroy
    redirect_to @band, :flash => { :notice => "Band destroyed"}
  end
  
  def delete_active_band
    
  end

end
