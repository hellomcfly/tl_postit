class PostsController < ApplicationController

  def index
  	@posts = Post.all
  end

  def show
  	@post = Post.find(params[:id])
  	my_comments = Comment.all
  	@comments = my_comments.select {|comment| comment.post_id == params[:id].to_i}
  end
end
