class PostsController < ApplicationController

  def index
  	@posts = Post.all
  end

  def show
  	@post = Post.find(params[:id])
  	@comments = @post.comments
  end

  def new
  	@post = Post.new
  	@users = User.all    
  end

  def create
  	@post = Post.new(params[:post])
  	@users = User.all    

  	if @post.save
  		flash[:notice] = "Your post was created."
  		redirect_to posts_path
  	else
  		@post.errors
  		render 'new'
  	end
  end

end
