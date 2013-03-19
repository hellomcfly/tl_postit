class CommentsController < ApplicationController

  def new
  	@comment = Comment.new
    @posts = Post.all
    @users = User.all
  end

  def create
    @posts = Post.all
    @users = User.all    
  	@comment = Comment.new(params[:comment])

  	if @comment.save
  		flash[:notice] = "Your comment was created."
  		redirect_to posts_path
  	else
  		@comment.errors
  		render 'new'
  	end
  end

end
