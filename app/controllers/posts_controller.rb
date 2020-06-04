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

private

  def post_params
    params.require(:post).permit(:caption, pictures: [])
  end
end
