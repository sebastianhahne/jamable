class PostsController < ApplicationController
  before_action :authenticate_user!

  def new
    @post = Post.new
  end

  def create
    # @user = User.find(params[:user_id])
    @post = Post.new(post_params)
    error = false
    @post.user = current_user
    if @post.mediafiles.length > 0 && YouTubeAddy.extract_video_id(@post.mediafiles).length != 11
      @post.mediafiles = ""
      error = true
    end
    if @post.valid? && error == false
      @post.save
      redirect_to posts_path
    else
      render :new, notice: "Invalid Youtube URL"
    end
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

  # Not questions! I'm lazy...

  def like_two
    @post = Post.find(params[:id])
    @current_user = current_user
    if @current_user.toggle_like!(@post)
      redirect_to profile_path, notice: "You liked #{@post.user.username.capitalize}s post"
    else
      redirect_to profile_path, notice: "You unliked #{@post.user.username.capitalize}s post"
    end
  end

private

  def post_params
    params.require(:post).permit(:mediafiles, :caption, pictures: [])
  end
end
