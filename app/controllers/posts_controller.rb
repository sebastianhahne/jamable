class PostsController < ApplicationController
  before_action :authenticate_user!

  def new
    @post = Post.new
  end

  def create
    # @user = User.find(params[:user_id])
    @post = Post.new(post_params)
    youtube_error = true
    @post.user = current_user

    if @post.mediafiles == ""
      youtube_error = false
     elsif YouTubeAddy.extract_video_id(@post.mediafiles) != nil  && YouTubeAddy.extract_video_id(@post.mediafiles).length == 11
       youtube_error = false
    else
      youtube_error = true
    end
     if @post.valid? && youtube_error == false
      @post.save
      redirect_to posts_path
    else
        render :new
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
      end
    end

  # No questions! I'm lazy...

  def like_two
    @post = Post.find(params[:id])
    @current_user = current_user
    if @current_user.toggle_like!(@post)
    end
  end

private

  def post_params
    params.require(:post).permit(:mediafiles, :caption, pictures: [])
  end
end
