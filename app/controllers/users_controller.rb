class UsersController < ApplicationController

  def index
  	@users = User.all
  end

  def show
  	@user = User.find(params[:id])
  	@comments = @user.comments
  	@posts = @user.posts
  end
end