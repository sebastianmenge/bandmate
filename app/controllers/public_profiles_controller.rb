class PublicProfilesController < ApplicationController
  layout "public"
  before_filter :find_band_by_id
  
  def show_profile
  end
  
  def update
  end
  
  protected
  
  def find_band_by_id
    @band = Band.find(params[:band_id])
  end
  
end
