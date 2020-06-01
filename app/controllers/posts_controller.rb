class PostsController < ApplicationController

  def show
    @posts = Posts.find(params[:id])
  end

  def index
    @posts = Posts.all
  end

  def create
    @post = Post.find(params[:user_id])
    @post.user = current_user
    @post.save
  end

  def new
    @post = Posts.new
  end

end

