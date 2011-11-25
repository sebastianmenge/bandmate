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
  
  def update
    @band = current_user.bands.find(params[:id])
    if @band.update_attributes(params[:band])
      redirect_to @band, :flash => { :success => "updated" }
    else
      render 'edit'
    end
  end
  
  def destroy
    @band = current_user.bands.find(params[:id])
    @band.destroy
    if current_user.bands.any?
      redirect_to band_path(current_user.bands.first), :flash => { :notice => "#{@band.name} deleted"}
    else
      redirect_to new_band_path, :flash => { :notice => "#{@band.name} deleted"}
    end
  end

end
