class PostsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :find_band_by_id
  before_filter :find_post_by_id, :only => [:show, :destroy]
  
  def index
    @posts = @band.posts.all
    @post ||= Post.new
  end
  
  def create
    @post = @band.posts.build(params[:post])
    
    respond_to do |format|
      if @post.save
        format.html { redirect_to posts_path }
        format.js
      else
        format.html { render :action => :index }
        format.js
      end
    end
  end
  
  def show
    find_post_by_id
    
    respond_to do |format|
     format.html {}
     format.js {
       render :layout => false
     }
    end
  end
  
  def destroy
    @post = Post.find(params[:id])   
    @post.destroy
    redirect_to band_posts_path
  end
  
  
  protected
  
  def find_band_by_id
    @band = current_user.bands.find(params[:band_id])
  end
  
  def find_post_by_id
    @post = @band.posts.find(params[:id])    
  end

end
