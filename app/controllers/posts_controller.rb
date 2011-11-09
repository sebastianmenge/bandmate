class PostsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :find_band_by_id
  before_filter :find_post_by_id, :only => [:show, :destroy]
  
  def index
    setup_posts
  end
  
  def create
    @post = @band.posts.build(params[:post])
    
    respond_to do |format|
      if @post.save
        format.html { redirect_to posts_path }
        format.js
      else
        setup_posts
        format.html { render :action => :index }
        format.js
      end
    end
  end
  
  def show
    find_post_by_id
  end
  
  def destroy
    @post = Post.find(params[:id])   
    @post.destroy
    redirect_to bandstream_path
  end
  
  
  protected
  
  def find_band_by_id
    @band = Band.find(params[:band_id])
  end
  
  def find_post_by_id
    @post = Post.find(params[:id])    
  end
  
  def setup_posts
    @posts = Post.all
    @post ||= Post.new
  end

end
