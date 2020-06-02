class PostsController < ApplicationController
  before_action :authenticate_user!

  def new
    @user = User.find(params[:user_id])
    @post = Posts.new
  end

  def create
    @user = User.find(params[:user_id])
    @post.user = current_user
    @post.save
  end

  def show
    @posts = Posts.find(params[:id])
  end

  def index
    @posts = Post.all
  end

end
