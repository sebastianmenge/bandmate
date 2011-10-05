class PagesController < ApplicationController
  before_filter :authenticate_user!, :except => [:start, :agb]
  


  def home
    
  end

  def agb
  end
  
end
