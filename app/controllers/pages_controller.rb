class PagesController < ApplicationController
  before_filter :authenticate_user!, :except => [:start, :agb]
  
  
  
  def start
    @title = "bandmate | get started!"
  end

  def home
  end

  def agb
  end
  
end
