class PublicProfilesController < ApplicationController
  layout "public"
  before_filter :find_band_by_id
  
  def show_profile
    
  end
  
  def update
    # find_band_by_id
    # if @band.update_attributes(params[:band])
    #   redirect_to band_bandprofile_path(@band), :flash => { :success => "updated" }
    # # else
    # #   render 'show_profile'
    # end
  end
  
  protected
  
  def find_band_by_id
    @band = Band.find(params[:band_id])
  end
  
end
