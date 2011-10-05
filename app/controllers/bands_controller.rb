class BandsController < ApplicationController
  before_filter :authenticate_user!
  
  def new
    @band = Band.new
  end
  
  def create
    @band = current_user.bands.build(params[:band])
    if @band.save
      redirect_to @band, :flash => { :success => "Band Created!" }
    else
      render 'new'
    end
  end

  def show
    # @band = Band.find(params[:id])
  end

  def edit
  end
  
  def destroy
    @band.destroy
    redirect_to @band, :flash => { :notice => "Band destroyed"}
  end

end
