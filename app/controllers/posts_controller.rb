class PostsController < ApplicationController
  before_action :authenticate_user!

  def new
    @post = Post.new
  end

  def create
    # @user = User.find(params[:user_id])
    @post = Post.new(post_params)
    @post.user = current_user
    @post.save
    redirect_to posts_path
  end

  def show
    @posts = Posts.find(params[:id])
  end

  def index
    @posts = Post.all
  end

  def like
    @post = Post.find(params[:id])
    @current_user = current_user
    if @current_user.toggle_like!(@post)
      redirect_to posts_path, notice: "You liked #{@post.user.username.capitalize}s post"
    else
      redirect_to posts_path, notice: "You unliked #{@post.user.username.capitalize}s post"
    end
  end

private

  def post_params
    params.require(:post).permit(:caption, pictures: [])
  end
end
